#! /usr/bin/python3.6
import logging
import statistics

from collections import defaultdict
from typing import Dict, List
from Device import *
from Common import RESOURCE_TYPES
from FloorplanLegalize import AutoLegalizer
from DataflowGraph import *
from Slot import Slot
from SlotManager import SlotManager, Dir
from mip import *
import queue as Q

from sqlalchemy import all_, false

_logger = logging.getLogger().getChild(__name__)


class Floorplanner:

  def __init__(
      self,
      graph : DataflowGraph,
      user_constraint_s2v : Dict,
      slot_manager : SlotManager,
      total_usage : dict,
      board,
      user_max_usage_ratio = 0.7,
      max_search_time=600,
      grouping_hints=[],
      grouping_constraints=[]):
    self.board = board
    self.graph = graph
    self.user_constraint_s2v = user_constraint_s2v
    for slot, v_list in user_constraint_s2v.items():
      for v in v_list:
        _logger.info(f'user constraints: {v.name} -> {slot.getRTLModuleName()}')

    self.slot_manager = slot_manager
    self.total_usage = total_usage
    self.max_search_time = max_search_time

    # hints are optional, constraints are mandatory
    self.grouping_hints = grouping_hints # list of list
    self.grouping_constraints: List[List[str]] = grouping_constraints
    if grouping_constraints:
      for group in grouping_constraints:
        _logger.info(f'initial grouping constraints: ' + ' & '.join(group))
    else:
      _logger.info(f'no initial grouping constraints')

    self.s2v = {}
    self.v2s = {}
    self.s2e = {}

    # incrementally adjust "delta" by "step" to calibrate the resource usage limit
    self.delta = 0
    self.step = 0.03
    self.MAX_USAGE_ALLOWED = 0.85 # cut the process if surpass this value
    self.max_usage_ratio = self.__getResourceUsageLimit(user_max_usage_ratio)

    self.__checker()
    
    self.topograph = defaultdict(list)
    vertex_list = list(self.graph.top_rtl_parser.traverseVertexInAST())
    edge_list = list(self.graph.top_rtl_parser.traverseEdgeInAST())
    self.No_V = len(vertex_list) + len(edge_list) - len(self.graph.hls_prj_manager.getSubInst())
    self.topostack = []

  def __checker(self):
    for v_group in self.user_constraint_s2v.values():
      for v in v_group:
        assert v in self.graph.getAllVertices(), f'{v.name} is not a valid RTL module'

  def __getResourceUsageLimit(self, user_max_usage_ratio):
    total_avail = self.board.TOTAL_AREA

    for item in RESOURCE_TYPES:
      usage = self.total_usage[item] / total_avail[item] + 0.05
      ratio = max(usage, user_max_usage_ratio)

    _logger.info(f'Maximum resource usage ratio set as: {ratio}')
    return ratio

  def __initSlotToEdges(self):
    self.s2e = {}
    for s, v_group in self.s2v.items():
      assert v_group, f'incorrect empty slot: {s.getName()}'

      # add the edge if the src and dst are both in this slot
      intra_edges, inter_edges = self.getIntraAndInterEdges(v_group)
      self.s2e[s] = intra_edges

      # for the FIFO connecting two different slots, it should be assigned to the destination side
      v_set = set(v_group)
      for e in inter_edges:
        if e.dst in v_set:
          self.s2e[s].append(e)
          _logger.debug(f'{e.name} is assigned with {e.dst.name}')

  # map all vertices to the initial slot (the whole device)
  def __getInitialSlotToVerticesMapping(self):
    init_slot = self.slot_manager.getInitialSlot()
    # logging.info(type(init_slot))
    # logging.info("{} {}".format(init_slot.down_left_x, init_slot.down_left_y))  # 0, 0 for any board
    # logging.info("{} {}".format(init_slot.up_right_x, init_slot.up_right_y))    # For U250, (7, 15)
    init_s2v = {init_slot : self.graph.getAllVertices()}                          # same number with "instance" in top hls report
    init_v2s = {v : init_slot for v in self.graph.getAllVertices()}               # same number with "instance" in top hls report
    
    return init_s2v, init_v2s

  def __addAreaConstraints(self, m, curr_s2v, v2var, dir, delta=0):
    for s, v_group in curr_s2v.items():
      bottom_or_left, up_or_right = self.slot_manager.partitionSlotByHalf(s, dir)
      assert up_or_right.up_right_x >= bottom_or_left.down_left_x

      for r in RESOURCE_TYPES:
        v_var_list = [v2var[v] for v in v_group]
        area_list = [v.area[r] for v in v_group] # resource consumption
        I = range(len(v_group))

        # for the up/right child slot (if mod_x is assigned 1)
        m += xsum( v_var_list[i] * area_list[i] for i in I ) <= up_or_right.getArea()[r] * (self.max_usage_ratio + delta)

        # for the down/left child slot (if mod_x is assigned 0)
        m += xsum( (1-v_var_list[i]) * area_list[i] for i in I ) <= bottom_or_left.getArea()[r] * (self.max_usage_ratio + delta)

  def __addUserConstraints(self, m, curr_v2s, v2var, dir, check_user_constraints = True):
    for expect_slot, v_group in self.user_constraint_s2v.items():
      for v in v_group:
        # this corner case is for separate partition of small slots
        if not check_user_constraints:
          if v not in curr_v2s:
            continue

        assert v in curr_v2s, f'ERROR: user has forced the location of a non-existing module {v.name}'

        curr_slot = curr_v2s[v]
        bottom_or_left, up_or_right = self.slot_manager.partitionSlotByHalf(curr_slot, dir)
        if bottom_or_left.containsChildSlot(expect_slot):
          _logger.debug(f'[user constraint] {v.name} assigned to bottom/left')
          m += v2var[v] == 0
        elif up_or_right.containsChildSlot(expect_slot):
          _logger.debug(f'[user constraint] {v.name} assigned to up/right')
          m += v2var[v] == 1
        else:
          # _logger.warning(f'Potential wrong constraints from user: {v.name} -> {expect_slot.getName()}') # ! DLF
          pass
          # exit(1)

  # specify which modules must be assigned to the same slot
  # note that the key of curr_v2s is Vertex instead of name string
  def __addGroupingConstraints(self, m, curr_v2s, v2var, enable_grouping_hints):
    _logger.info(f'apply grouping constraints')
    v_name_to_v = {v.name : v for v in curr_v2s.keys()}

    if enable_grouping_hints:
      target = self.grouping_hints + self.grouping_constraints
    else:
      target = self.grouping_constraints

    for grouping in target:
      # assert grouping[0] in v_name_to_v, f'unknown vertex: {grouping[0]}'
      for i in range(1, len(grouping)):
        # assert grouping[i] in v_name_to_v, f'unknown vertex: {grouping[i]}'

        if grouping[0] in v_name_to_v and grouping[i] in v_name_to_v:
          _logger.info(f'[grouping] {grouping[0]} is grouped with {grouping[i]}')
          m += v2var[v_name_to_v[grouping[0]]] == v2var[v_name_to_v[grouping[i]]]

  def __addOptGoal(self, m, curr_v2s, external_v2s, v2var, dir):
    def getVertexPosInChildSlot(v : Vertex):
      def getChildSlotPositionX(v):
        if v in external_v2s:
          return external_v2s[v].getPositionX() # const
        else:
          return curr_v2s[v].getQuarterPositionX() + v2var[v] * curr_v2s[v].getHalfLenX() # expr

      def getChildSlotPositionY(v):
        if v in external_v2s:
          return external_v2s[v].getPositionY() # const
        else:
          return curr_v2s[v].getQuarterPositionY() + v2var[v] * curr_v2s[v].getHalfLenY() # expr

      if dir == Dir.vertical:
        return getChildSlotPositionX(v)
      elif dir == Dir.horizontal:
        return getChildSlotPositionY(v)
      else:
        assert False

    # get all involved edges. Differentiate internal edges and boundary edges
    intra_edges, interface_edges = self.getIntraAndInterEdges(curr_v2s.keys())

    # cost function.
    edge_costs = [m.add_var(var_type=INTEGER, name=f'intra_{e.name}') for e in intra_edges] \
        + [m.add_var(var_type=INTEGER, name=f'inte_{e.name}') for e in interface_edges]

    all_edges = intra_edges + interface_edges
    for e_cost, e in zip(edge_costs, all_edges):
      m += e_cost >= getVertexPosInChildSlot(e.src) - getVertexPosInChildSlot(e.dst)
      m += e_cost >= getVertexPosInChildSlot(e.dst) - getVertexPosInChildSlot(e.src)

    m.objective = minimize(xsum(edge_costs[i] * edge.width for i, edge in enumerate(all_edges) ) )
  def __addOptGoalMinDist(self, m, curr_v2s, external_v2s, v2var, dir):
    def getVertexPosInChildSlot(v : Vertex):
      def getChildSlotPositionX(v):
        if v in external_v2s:
          return external_v2s[v].getPositionX() # const
        else:
          return curr_v2s[v].getQuarterPositionX() + v2var[v] * curr_v2s[v].getHalfLenX() # expr

      def getChildSlotPositionY(v):
        if v in external_v2s:
          return external_v2s[v].getPositionY() # const
        else:
          return curr_v2s[v].getQuarterPositionY() + v2var[v] * curr_v2s[v].getHalfLenY() # expr

      if dir == Dir.vertical:
        return getChildSlotPositionX(v)
      elif dir == Dir.horizontal:
        return getChildSlotPositionY(v)
      else:
        assert False

    # get all involved edges. Differentiate internal edges and boundary edges
    intra_edges, interface_edges = self.getIntraAndInterEdges(curr_v2s.keys())

    # cost function.
    edge_costs = [m.add_var(var_type=INTEGER, name=f'intra_{e.name}') for e in intra_edges] \
        + [m.add_var(var_type=INTEGER, name=f'inte_{e.name}') for e in interface_edges]

    all_edges = intra_edges + interface_edges
    for e_cost, e in zip(edge_costs, all_edges):
      m += e_cost >= getVertexPosInChildSlot(e.src) - getVertexPosInChildSlot(e.dst)
      m += e_cost >= getVertexPosInChildSlot(e.dst) - getVertexPosInChildSlot(e.src)

    m.objective = minimize(xsum(edge_costs[i] for i, edge in enumerate(all_edges) ) )
  def __getPartitionResult(self, num_solutions, curr_s2v, v2var, dir):
    def getIthSolution(i, temp_slots):
      # create new mapping
      next_s2v = {}
      next_v2s = {}

      for s, v_group in curr_s2v.items():
        bottom_or_left, up_or_right = self.slot_manager.partitionSlotByHalf(s, dir)
        temp_slots += [bottom_or_left, up_or_right]

        next_s2v[bottom_or_left] = []
        next_s2v[up_or_right] = []
        for v in v_group:
          # if v is assigned to 0-half in the i-th solution
          if round(v2var[v].xi(i)) == 0:
            next_s2v[bottom_or_left].append(v)
            next_v2s[v] = bottom_or_left

          # if v is assigned to 1-half in the i-th solution
          elif round(v2var[v].xi(i)) == 1:
            next_s2v[up_or_right].append(v)
            next_v2s[v] = up_or_right
          else:
            assert False, v2var[v].xi(i)

          # sometimes the result is not strictly integer?
          assert abs(round(v2var[v].xi(i)) - v2var[v].xi(i)) < 0.0001, v2var[v].xi(i)

        # if no Vertex is assigned to a Slot, remove that Slot
        if not next_s2v[bottom_or_left]:
          next_s2v.pop(bottom_or_left)
          self.slot_manager.removeSlotNonBlocking(bottom_or_left.getName())
          _logger.info(bottom_or_left.getName())
        if not next_s2v[up_or_right]:
          next_s2v.pop(up_or_right)
          self.slot_manager.removeSlotNonBlocking(up_or_right.getName())
          _logger.info(bottom_or_left.getName())

      return next_s2v, next_v2s

    # _logger.info(f'there are {num_solutions} solutions available')

    best_next_s2v = {}
    best_next_v2s = {}
    best_var = float('inf')

    # track all temp slots and delete the empty ones at the end
    temp_slots = []

    # choose the most balanced solution
    for i in range(num_solutions):
      next_s2v, next_v2s = getIthSolution(i, temp_slots)

      # get the average variance of each resource
      var = 0
      for r in RESOURCE_TYPES:
        # percentage of resource r
        s2area = {slot : sum(v.area[r] for v in v_list) / slot.getArea()[r] \
                  for slot, v_list in next_s2v.items() }

        # corner case: if next_s2v only has one slot
        expect_slot_num = len(curr_s2v) * 2
        empty_slot_num = expect_slot_num - len(s2area)
        slots_usage_list = list(s2area.values()) + [0] * empty_slot_num

        var += statistics.variance(slots_usage_list)


      # _logger.info(f'the {i}-th solution has variance: {var}')

      # track the best solution
      if var < best_var:
        best_var = var
        best_next_s2v = next_s2v
        best_next_v2s = next_v2s

    # remove unused temp slots
    for temp in temp_slots:
      if temp not in best_next_s2v:
        self.slot_manager.removeSlotNonBlocking(temp.getName())

    return best_next_s2v, best_next_v2s

  def __createILPVariables(self, m, curr_v2s):
    v2var = {} # str -> [mip_var]
    for v in curr_v2s.keys():
      v2var[v] = m.add_var(var_type=BINARY, name=f'{v.name}_x')

    return v2var

  # could only be invoked at the beginning when there is only one slot
  def eightWayPartition(self):
    _logger.info('Start 8-way partitioning routine')

    curr_s2v, curr_v2s = self.__getInitialSlotToVerticesMapping()

    m = Model()
    if not _logger.isEnabledFor(logging.DEBUG):
      m.verbose = 0

    # three variables could determine the location of a module
    # y = y1 *2 + y2  (four slots)
    # x = x           (each SLR is divided by half)
    v2var_x = {}
    v2var_y1 = {}
    v2var_y2 = {}
    for v in curr_v2s.keys():
      v2var_x[v] = m.add_var(var_type=BINARY, name=f'{v.name}_x')
      v2var_y1[v] = m.add_var(var_type=BINARY, name=f'{v.name}_y1')
      v2var_y2[v] = m.add_var(var_type=BINARY, name=f'{v.name}_y2')

    # get the target slots
    # for U280, slot_11x will have empty area
    init_slot = self.slot_manager.getInitialSlot()
    slot_0, slot_1 = self.slot_manager.getBottomAndUpSplit(init_slot)

    slot_00, slot_01 = self.slot_manager.getBottomAndUpSplit(slot_0)
    slot_10, slot_11 = self.slot_manager.getBottomAndUpSplit(slot_1)

    slot_000, slot_001 = self.slot_manager.getLeftAndRightSplit(slot_00)
    slot_010, slot_011 = self.slot_manager.getLeftAndRightSplit(slot_01)
    slot_100, slot_101 = self.slot_manager.getLeftAndRightSplit(slot_10)
    slot_110, slot_111 = self.slot_manager.getLeftAndRightSplit(slot_11)

    # must not change order!
    slot_group = [slot_000, slot_001, \
                  slot_010, slot_011, \
                  slot_100, slot_101, \
                  slot_110, slot_111 ]
    # note that slot_idx is different from slot position
    slot_idx = lambda y1, y2, x : y1 * 4 + y2 * 2 + x

    # area constraint
    for r in RESOURCE_TYPES:
      choose = lambda x, num: x if num == 1 else (1-x)

      for y1 in range(2):
        for y2 in range(2):
          for x in range(2):
            # convert logic AND to linear constraints
            # prods[v] = choose_y1 AND choose_y2 AND choose_x
            prods = { v : m.add_var(var_type=BINARY, name=f'{v.name}_choose{y1}{y2}{x}') for v in curr_v2s.keys() }
            for v in curr_v2s.keys():
              m +=  choose(v2var_y1[v], y1) + choose(v2var_y2[v], y2) + \
                    choose(v2var_x[v], x) - 3 * prods[v] >= 0
              m +=  choose(v2var_y1[v], y1) + choose(v2var_y2[v], y2) + \
                    choose(v2var_x[v], x) - 3 * prods[v] <= 2

            m += xsum(  prods[v] * v.getVertexAndInboundFIFOArea()[r] for v in curr_v2s.keys() ) \
                        <= slot_group[slot_idx(y1, y2, x)].getArea()[r] * self.max_usage_ratio

    # user constraint
    for expect_slot, v_group in self.user_constraint_s2v.items():
      for v in v_group:
        assert v in curr_v2s, f'ERROR: user has forced the location of a non-existing module {v.name}'

        for y1 in range(2):
          for y2 in range(2):
            for x in range(2):
              if slot_group[slot_idx(y1, y2, x)].containsChildSlot(expect_slot):
                m += v2var_y1[v] == y1
                m += v2var_y2[v] == y2
                m += v2var_x[v] == x

    # grouping constraints
    for v2var in [v2var_x, v2var_y1, v2var_y2]:
      self.__addGroupingConstraints(m, curr_v2s=curr_v2s, v2var=v2var, enable_grouping_hints=True)

    # add optimization goal
    intra_edges, interface_edges = self.getIntraAndInterEdges(curr_v2s.keys())
    edge_costs = [m.add_var(var_type=INTEGER, name=f'intra_{e.name}') for e in intra_edges] \
        + [m.add_var(var_type=INTEGER, name=f'inter_{e.name}') for e in interface_edges]
    all_edges = intra_edges + interface_edges

    # note pos is different from slot_idx, becasue the x dimension is different from the y dimention
    # we will use |(y1 * 2 + y1) - (y2 * 2 + y2)| + |x1 - x2| to express the hamming distance
    pos_y = lambda v : v2var_y1[v] * 2 + v2var_y2[v]
    pos_x = lambda v : v2var_x[v]
    cost_y = lambda e : pos_y(e.src) - pos_y(e.dst)
    cost_x = lambda e : pos_x(e.src) - pos_x(e.dst)

    for e_cost_var, e in zip(edge_costs, all_edges):
      m += e_cost_var >= cost_y(e) + cost_x(e)
      m += e_cost_var >= -cost_y(e) + cost_x(e)
      m += e_cost_var >= cost_y(e) - cost_x(e)
      m += e_cost_var >= -cost_y(e) - cost_x(e)

    m.objective = minimize(xsum(edge_costs[i] * edge.width for i, edge in enumerate(all_edges) ) )

    _logger.info('Start ILP solver')
    # m.write('Coarse-Grained-Floorplan.lp')
    status = m.optimize(max_seconds=self.max_search_time)
    # assert status == OptimizationStatus.OPTIMAL or status == OptimizationStatus.FEASIBLE, '8-way partioning failed!'
    if status != OptimizationStatus.OPTIMAL and status != OptimizationStatus.FEASIBLE:
      _logger.warning('2-way partioning failed!')
      return False
    else:
      _logger.info("Optimized SLL Util: {}, best possible: {}".format(int(m.objective_value), int(m.objective_bound)))
    # next_s2v, next_v2s = self.__getPartitionResult(m.num_solutions, curr_s2v=curr_s2v, v2var=v2var, dir=dir)

    # extract results
    next_s2v = {}
    next_v2s = {}

    for v in curr_v2s.keys():
      idx = int(slot_idx(v2var_y1[v].x,  v2var_y2[v].x, v2var_x[v].x))
      if slot_group[idx] not in next_s2v:
        next_s2v[slot_group[idx]] = []
      next_s2v[slot_group[idx]].append(v)
      next_v2s[v] = slot_group[idx]

    self.printFloorplan()

    # remove empty slots
    for slot in self.slot_manager.getActiveSlotsIncludeRouting():
      if slot not in next_s2v:
        self.slot_manager.removeSlotNonBlocking(slot.getName())

    self.s2v, self.v2s = next_s2v, next_v2s
    self.__initSlotToEdges()

    # return
    slot0 = list(self.s2v.items())[0][0]
    if slot0.getOrigUpRightY() - slot0.getOrigDownLeftY() != 3 or slot0.getOrigUpRightX() - slot0.getOrigDownLeftX() != 3:
      _logger.error("Slot Partition Failure. {}".format(slot0.getRTLModuleName()))
      return False
    else:
      slr_crossing = self.getUtilizationSLL()
      if max(slr_crossing) > 0.9 * 23040:
        _logger.error("SLL over-utilized:")
        for i in range(self.board.SLR_NUM-1):
          _logger.error(f'SLR boundary {i} - {i+1} has {slr_crossing[i]} crossings')
        return False
      else:
        self.printFloorplan()
        return True

  # partition each slot separately. Used when the slots are already small
  def __separateTwoWayPartition(self, curr_s2v : Dict, curr_v2s : Dict, dir : str, external_v2s : Dict = {},
                                enable_grouping_hints = False,
                                exit_on_failure = True):
    next_s2v = defaultdict(list)
    next_v2s = {}

    # TODO: do we need to parallelize the loop?
    for slot, vertices in curr_s2v.items():
      individual_s2v = {slot : vertices}
      individual_v2s = {v : slot for v in vertices}

      # need external constraints
      external_v2s = {}
      for v in individual_v2s.keys():
        neighbors = v.getNeighborVertices()
        for n in neighbors:
          if n not in individual_v2s:
            external_v2s[n] = curr_v2s[n]

      # disable user constraints checkpoint in separate partition mode
      # because we only operate on a subset of the design, which may not cover
      # some of the user-specified modules. Just apply the constraints on available modules
      indi_next_s2v, indi_next_v2s = self.__twoWayPartitionWrapper(individual_s2v, individual_v2s, dir, external_v2s,
                                                                  enable_grouping_hints = enable_grouping_hints,
                                                                  check_user_constraints = False,
                                                                  exit_on_failure = exit_on_failure)

      if indi_next_s2v:
        next_s2v.update(indi_next_s2v)
      if indi_next_v2s:
        next_v2s.update(indi_next_v2s)

    return next_s2v, next_v2s

  # automatically adjust the max usage ratio to get a valid solution
  def __twoWayPartitionWrapper(self, curr_s2v : Dict, curr_v2s : Dict, dir : str, 
                               external_v2s : Dict = {},
                               enable_grouping_hints = True,
                               check_user_constraints=True,
                               exit_on_failure=False):
    init_delta = 0
    while 1:
      next_s2v, next_v2s = self.__twoWayPartition(curr_s2v, curr_v2s, dir, external_v2s, init_delta, enable_grouping_hints, check_user_constraints)
      if not next_s2v and not next_v2s:
        init_delta += self.step
        _logger.warning(f'use delta of {init_delta} to find valid solution')
        if self.max_usage_ratio + init_delta > self.MAX_USAGE_ALLOWED:
          _logger.critical('not likely there is a reasonable solution')
          if exit_on_failure:
            exit(1)
          else:
            _logger.critical('partition failed, returning unpartitioned mapping')
            return curr_s2v, curr_v2s
      else:
        return next_s2v, next_v2s
  def __twoWayPartitionMinDistWrapper(self, curr_s2v : Dict, curr_v2s : Dict, dir : str, 
                               external_v2s : Dict = {},
                               enable_grouping_hints = True,
                               check_user_constraints=True,
                               exit_on_failure=True):
    init_delta = 0
    while 1:
      next_s2v, next_v2s = self.__twoWayPartitionMinDist(curr_s2v, curr_v2s, dir, external_v2s, init_delta, enable_grouping_hints, check_user_constraints)
      if not next_s2v and not next_v2s:
        init_delta += self.step
        _logger.warning(f'use delta of {init_delta} to find valid solution')
        if self.max_usage_ratio + init_delta > self.MAX_USAGE_ALLOWED:
          _logger.critical('not likely there is a reasonable solution')
          if exit_on_failure:
            exit(1)
          else:
            _logger.critical('partition failed, returning unpartitioned mapping')
            return curr_s2v, curr_v2s
      else:
        return next_s2v, next_v2s

  # use iterative 2-way partitioning when there are lots of small functions
  # check_user_constraints: whether to check the modules in user-given constraints exist
  # set check_user_constraints to false in seperate partition of small slots
  def __twoWayPartition(self, curr_s2v : Dict, curr_v2s : Dict, dir : str, external_v2s : Dict, delta, enable_grouping_hints, check_user_constraints):
    assert set(map(type, curr_s2v.keys())) == {Slot}
    assert set(map(type, curr_v2s.keys())) == {Vertex}
    _logger.info(f'\nStart 2-way partitioning routine, pattern-based optimzation is {enable_grouping_hints}')

    # Create ILP Model
    m = Model()
    if not _logger.isEnabledFor(logging.DEBUG):
      m.verbose = 0

    v2var = self.__createILPVariables(m, curr_v2s=curr_v2s)

    self.__addOptGoal(m, curr_v2s=curr_v2s, external_v2s=external_v2s, v2var=v2var, dir=dir)

    # area constraints for each child slot
    self.__addAreaConstraints(m, curr_s2v=curr_s2v, v2var=v2var, dir=dir, delta=delta)

    self.__addUserConstraints(m, curr_v2s=curr_v2s, v2var=v2var, dir=dir, check_user_constraints=check_user_constraints)

    self.__addGroupingConstraints(m, curr_v2s=curr_v2s, v2var=v2var, enable_grouping_hints=enable_grouping_hints)

    _logger.info('Start ILP solver')
    # m.write('Coarse-Grained-Floorplan.lp')
    status = m.optimize(max_seconds=self.max_search_time)
    if status != OptimizationStatus.OPTIMAL and status != OptimizationStatus.FEASIBLE:
      _logger.warning('2-way partioning failed!')
      return {}, {}
    else:
      _logger.info("Optimized SLL Util: {}, best possible: {}".format(int(m.objective_value), int(m.objective_bound)))
    next_s2v, next_v2s = self.__getPartitionResult(m.num_solutions, curr_s2v=curr_s2v, v2var=v2var, dir=dir)

    return next_s2v, next_v2s
  def __twoWayPartitionMinDist(self, curr_s2v : Dict, curr_v2s : Dict, dir : str, external_v2s : Dict, delta, enable_grouping_hints, check_user_constraints):
    assert set(map(type, curr_s2v.keys())) == {Slot}
    assert set(map(type, curr_v2s.keys())) == {Vertex}
    _logger.info(f'\nStart 2-way partitioning routine, pattern-based optimzation is {enable_grouping_hints}')

    # Create ILP Model
    m = Model()
    if not _logger.isEnabledFor(logging.DEBUG):
      m.verbose = 0

    v2var = self.__createILPVariables(m, curr_v2s=curr_v2s)

    self.__addOptGoalMinDist(m, curr_v2s=curr_v2s, external_v2s=external_v2s, v2var=v2var, dir=dir)

    # area constraints for each child slot
    self.__addAreaConstraints(m, curr_s2v=curr_s2v, v2var=v2var, dir=dir, delta=delta)

    self.__addUserConstraints(m, curr_v2s=curr_v2s, v2var=v2var, dir=dir, check_user_constraints=check_user_constraints)

    self.__addGroupingConstraints(m, curr_v2s=curr_v2s, v2var=v2var, enable_grouping_hints=enable_grouping_hints)

    _logger.info('Start ILP solver')
    # m.write('Coarse-Grained-Floorplan.lp')
    status = m.optimize(max_seconds=self.max_search_time)
    if status != OptimizationStatus.OPTIMAL and status != OptimizationStatus.FEASIBLE:
      _logger.warning('2-way partioning failed!')
      return {}, {}
    else:
      _logger.info("Optimized SLL Util: {}, best possible: {}".format(int(m.objective_value), int(m.objective_bound)))
    next_s2v, next_v2s = self.__getPartitionResult(m.num_solutions, curr_s2v=curr_s2v, v2var=v2var, dir=dir)

    return next_s2v, next_v2s

  def getUtilizationSLL(self):
    # SLR crossing information
    slr_crossing = [0] * (self.board.SLR_NUM-1)
    for e_list in self.s2e.values():
      for e in e_list:
        src_slr = self.v2s[e.src].getSLR()
        dst_slr = self.v2s[e.dst].getSLR()
        idx_small = min(src_slr, dst_slr)
        idx_large = max(src_slr, dst_slr)
        for i in range(idx_small, idx_large):
          slr_crossing[i] += e.width
    return [slr_crossing[i] for i in range(self.board.SLR_NUM-1)]

  def printFloorplan(self):
    _logger.info('Show current floorplan result:')

    for s, v_group in self.s2v.items():
      _logger.info(f'{s.getName()}:')
      for r in RESOURCE_TYPES:
        used = sum([v.area[r] for v in v_group])
        avail = s.getArea()[r]
        if avail:
          _logger.info(f'[{r}]: {used} / {avail} = {used/avail}')
        else:
          _logger.info(f'[{r}]: {used} used, 0 exists')
      for v in v_group:
        _logger.info(f'  Kernel: {v.name}')
      for e in self.s2e[s]:
        _logger.info(f'  FIFO: {e.name}')

    # wire information
    wire_length_list = []
    for e_list in self.s2e.values():
      for e in e_list:
        src_slot = self.v2s[e.src]
        dst_slot = self.v2s[e.dst]
        length = abs(src_slot.getPositionY() - dst_slot.getPositionY()) + \
                 abs(src_slot.getPositionX() - dst_slot.getPositionX())
        wire_length_list.append(length)

    _logger.info(f'total wire length: {sum(wire_length_list)}')
    if len(wire_length_list) > 1:
      _logger.info(f'variance of wire length: {statistics.variance(wire_length_list)}')

    # SLR crossing information
    slr_crossing = [0] * (self.board.SLR_NUM-1)
    for e_list in self.s2e.values():
      for e in e_list:
        src_slr = self.v2s[e.src].getSLR()
        dst_slr = self.v2s[e.dst].getSLR()
        idx_small = min(src_slr, dst_slr)
        idx_large = max(src_slr, dst_slr)
        for i in range(idx_small, idx_large):
          slr_crossing[i] += e.width

    for i in range(self.board.SLR_NUM-1):
      _logger.info(f'SLR boundary {i} - {i+1} has {slr_crossing[i]} crossings')
      
    _logger.info("\n\nFinal Resource Consumption -------------------------------------")
    total_used = {r:sum([sum([v.area[r] for v in v_group]) for s, v_group in self.s2v.items()]) for r in RESOURCE_TYPES}
    total_avail = self.board.getTotalAvailArea()
    _logger.info("Total Used Resource: {}".format(total_used))
    _logger.info("Total Available Resource: {}".format(total_avail))
    _logger.info("Total Used/Avail Ratio:")
    for r in RESOURCE_TYPES:
      _logger.info("{}: {:.6f}".format(r, total_used[r] / total_avail[r]))
    _logger.info("For copying to Excel: {}".format("/".join(["{:.6f}".format(total_used[r] / total_avail[r]) for r in RESOURCE_TYPES[:-1]])))
    
    # for v in self.v2s.keys():
    #   _logger.info("vname: {}, resource: {}".format(v.name, {r:v.area[r] for r in RESOURCE_TYPES}))

  def getUtilization(self) -> Dict[Slot, Dict[str, float]]:
    util = {}
    for s, v_group in self.s2v.items():
      assert v_group, f'empty slot should not exist: {s.getName()}'
      util[s] = {}
      for r in RESOURCE_TYPES:
        used = sum([v.area[r] for v in v_group])
        avail = s.getArea()[r]
        # a slot may not contain some type of resources
        if avail:
          util[s][r] = used/avail

    return util
  
  def getUtilizationQuantity(self) -> Dict[Slot, Dict[str, float]]:
    util = {}
    for s, v_group in self.s2v.items():
      # assert v_group, f'empty slot should not exist: {s.getName()}'
      util[s] = {}
      for r in RESOURCE_TYPES:
        used = sum([v.area[r] for v in v_group])
        avail = s.getArea()[r]
        # a slot may not contain some type of resources
        if avail:
          util[s][r] = used

    return util

  # obtain the edges that are inside the given slots and the edges between the given slots and the other slots
  def getIntraAndInterEdges(self, v_group):
    second_visited_edges = set()
    first_visited_edges = set()

    # if an edge is visited twice, then it is entirely within the target slots
    # if an edge is visited only once, then it is between the target slots and the remaining slots
    for v in v_group:
      for e in v.getEdges(): # both in and out edges
        if e in first_visited_edges:
          second_visited_edges.add(e)
          first_visited_edges.remove(e)
        else:
          first_visited_edges.add(e)

          # double check that an edge will not be visited a 3rd time
          assert e not in second_visited_edges, "{}".format(e.name)

    interface_edges = list(first_visited_edges)
    intra_edges = list(second_visited_edges)

    return intra_edges, interface_edges

  def coarseGrainedFloorplan(self):
    init_s2v, init_v2s = self.__getInitialSlotToVerticesMapping()
    iter1_s2v, iter1_v2s = self.__twoWayPartitionWrapper(init_s2v, init_v2s, Dir.horizontal) # based on die boundary

    iter2_s2v, iter2_v2s = self.__twoWayPartitionWrapper(iter1_s2v, iter1_v2s, Dir.horizontal) # based on die boundary

    self.s2v, self.v2s = self.__twoWayPartitionWrapper(iter2_s2v, iter2_v2s, Dir.vertical) # based on ddr ctrl in the middle
    
    _logger.info(["{} {}".format(_[0].getName(), [__.name for __ in _[1]]) for _ in self.s2v.items()])

    self.__initSlotToEdges()
    
    slot0 = list(self.s2v.items())[0][0]
    
    if slot0.getOrigUpRightY() - slot0.getOrigDownLeftY() != 3 or slot0.getOrigUpRightX() - slot0.getOrigDownLeftX() != 3:
      _logger.error("Slot Partition Failure. {}".format(slot0.getRTLModuleName()))
      return False
    else:
      slr_crossing = self.getUtilizationSLL()
      if max(slr_crossing) > 0.9 * 23040:
        _logger.error("SLL over-utilized:")
        for i in range(self.board.SLR_NUM-1):
          _logger.error(f'SLR boundary {i} - {i+1} has {slr_crossing[i]} crossings')
        return False
      else:
        self.printFloorplan()
        return True

  # do not use pattern-based clustering
  def naiveFineGrainedFloorplan(self):
    init_s2v, init_v2s = self.__getInitialSlotToVerticesMapping()
    iter1_s2v, iter1_v2s = self.__twoWayPartitionWrapper(init_s2v, init_v2s, Dir.horizontal, enable_grouping_hints=False) # based on die boundary

    iter2_s2v, iter2_v2s = self.__twoWayPartitionWrapper(iter1_s2v, iter1_v2s, Dir.horizontal, enable_grouping_hints=False) # based on die boundary

    iter3_s2v, iter3_v2s = self.__twoWayPartitionWrapper(iter2_s2v, iter2_v2s, Dir.vertical, enable_grouping_hints=False) # based on die boundary

    iter4_s2v, iter4_v2s = self.__separateTwoWayPartition(iter3_s2v, iter3_v2s, Dir.horizontal, enable_grouping_hints=False) # based on die boundary

    self.s2v, self.v2s = self.__separateTwoWayPartition(iter4_s2v, iter4_v2s, Dir.vertical, enable_grouping_hints=False) # based on ddr ctrl in the middle

    self.__initSlotToEdges()
    self.printFloorplan()

  def floorplanVHHvh(self):
    """
    switch the order of partitioning. Seems that this one is much faster than other order.
    """
    init_s2v, init_v2s = self.__getInitialSlotToVerticesMapping()
    iter1_s2v, iter1_v2s = self.__twoWayPartitionWrapper(init_s2v, init_v2s, Dir.vertical) # based on die boundary

    iter2_s2v, iter2_v2s = self.__twoWayPartitionWrapper(iter1_s2v, iter1_v2s, Dir.horizontal) # based on die boundary

    iter3_s2v, iter3_v2s = self.__twoWayPartitionWrapper(iter2_s2v, iter2_v2s, Dir.horizontal) # based on ddr ctrl in the middle

    iter4_s2v, iter4_v2s = self.__separateTwoWayPartition(iter3_s2v, iter3_v2s, Dir.vertical, enable_grouping_hints=False) # 4 CR

    iter5_s2v, iter5_v2s = self.__separateTwoWayPartition(iter4_s2v, iter4_v2s, Dir.horizontal, enable_grouping_hints=False) # 8 CR

    v_list = self.graph.getAllVertices()
    v_name_to_v = {v.name : v for v in v_list}
    grouping_list: List[List[Vertex]] = [
      [v_name_to_v[v_name] for v_name in grouping] \
        for grouping in self.grouping_constraints
    ]

    # FIXME: a temp hack to allow the legalizer to use all slots
    all_slot_list = self.slot_manager.getAllTwoByTwoCRSlots()
    self.s2v, self.v2s = AutoLegalizer(iter5_v2s, grouping_list, all_slot_list)

    # FIXME: a temp hack to register all used slots as compute slots
    for slot in self.s2v.keys():
      self.slot_manager.createSlot(slot.getName())

    self.__initSlotToEdges()
    self.printFloorplan()

  def patternBasedFineGrainedFloorplan(self):
    init_s2v, init_v2s = self.__getInitialSlotToVerticesMapping()
    iter1_s2v, iter1_v2s = self.__twoWayPartitionWrapper(init_s2v, init_v2s, Dir.horizontal) # based on die boundary

    iter2_s2v, iter2_v2s = self.__twoWayPartitionWrapper(iter1_s2v, iter1_v2s, Dir.horizontal) # based on die boundary

    iter3_s2v, iter3_v2s = self.__twoWayPartitionWrapper(iter2_s2v, iter2_v2s, Dir.vertical) # based on ddr ctrl in the middle

    iter4_s2v, iter4_v2s = self.__separateTwoWayPartition(iter3_s2v, iter3_v2s, Dir.horizontal, enable_grouping_hints=False) # 8 CR

    self.s2v, self.v2s = self.__separateTwoWayPartition(iter4_s2v, iter4_v2s, Dir.vertical, enable_grouping_hints=False) # 4 CR

    self.__initSlotToEdges()
    self.printFloorplan()

  def hetero4CRFloorplan(self):
    init_s2v, init_v2s = self.__getInitialSlotToVerticesMapping()
    iter1_s2v, iter1_v2s = self.__twoWayPartitionWrapper(init_s2v, init_v2s, Dir.horizontal) # based on die boundary

    iter2_s2v, iter2_v2s = self.__twoWayPartitionWrapper(iter1_s2v, iter1_v2s, Dir.horizontal) # based on die boundary

    iter3_s2v, iter3_v2s = self.__twoWayPartitionWrapper(iter2_s2v, iter2_v2s, Dir.vertical) # based on ddr ctrl in the middle

    iter4_s2v, iter4_v2s = self.__separateTwoWayPartition(iter3_s2v, iter3_v2s, Dir.vertical, enable_grouping_hints=False) # 8 CR

    # in the last partition, go as small as possible but do not enforce
    # allow heterogeneous slot sizes
    self.s2v, self.v2s = self.__separateTwoWayPartition(iter4_s2v, iter4_v2s, Dir.horizontal, enable_grouping_hints=False, exit_on_failure=False) # 4 CR

    self.__initSlotToEdges()
    self.printFloorplan()

  def naiveTwoCRGranularityFloorplan(self):
    init_s2v, init_v2s = self.__getInitialSlotToVerticesMapping()
    iter1_s2v, iter1_v2s = self.__twoWayPartitionWrapper(init_s2v, init_v2s, Dir.horizontal) # based on die boundary

    iter2_s2v, iter2_v2s = self.__twoWayPartitionWrapper(iter1_s2v, iter1_v2s, Dir.horizontal) # based on die boundary

    iter3_s2v, iter3_v2s = self.__twoWayPartitionWrapper(iter2_s2v, iter2_v2s, Dir.horizontal) # based on die boundary

    iter4_s2v, iter4_v2s = self.__twoWayPartitionWrapper(iter3_s2v, iter3_v2s, Dir.vertical) # based on die boundary

    iter5_s2v, iter5_v2s = self.__twoWayPartitionWrapper(iter4_s2v, iter4_v2s, Dir.vertical) # based on die boundary

    self.s2v, self.v2s = self.__twoWayPartitionWrapper(iter5_s2v, iter5_v2s, Dir.vertical) # based on ddr ctrl in the middle

    self.__initSlotToEdges()
    self.printFloorplan()

  def getSlotToVertices(self):
    return self.s2v

  def getSlotToEdges(self):
    return self.s2e

  def getVertexToSlot(self):
    return self.v2s

  def getSlotNameToVertexNames(self):
    s_name_2_v_names = {}
    for slot, v_group in self.s2v.items():
      s_name_2_v_names[slot.getName()] = {v.type : v.name for v in v_group}
    return s_name_2_v_names

  def getVertexNameToSlot(self):
    return {v.name: s for v, s in self.v2s.items()}

  def getEdgeNameToSlot(self):
    e_name_to_s = {}  # e2s
    for slot, e_list in self.s2e.items():
      for e in e_list:
        e_name_to_s[e.name] = slot

    return e_name_to_s

  def getSlotNameToEdgeNames(self):
    s_name_2_e_names = {}
    for slot, e_group in self.s2e.items():
      s_name_2_e_names[slot.getName()] = [e.name for e in e_group]
    return s_name_2_e_names
# --------------------------------- MFPD ----------------------------------  
  def addEdge(self, u, v):
    self.topograph[u].append(v)
    
  def topologicalSortUtil(self, v, visited, stack):
    visited[v] = True
    for adj_v in self.topograph[v]:
      if visited[adj_v] == False:
        self.topologicalSortUtil(adj_v, visited, stack)
    stack.insert(0, v)
  
  def topologicalSort(self):
    # Build Graph
    for v_node in self.graph.top_rtl_parser.traverseVertexInAST():
      if v_node.name in self.graph.hls_prj_manager.getSubInst() or re.search("mul_\d+[a-z]+_\d+[a-z]+", v_node.name) or re.search("data_split", v_node.name):
        logging.debug("Excluding module {} - name {}".format(v_node.module, v_node.name))
        continue
      for in_edge_name in self.graph.vertices[v_node.name].in_edge_names:
        self.addEdge(in_edge_name, v_node.name)
        # _logger.info()
      for out_edge_name in self.graph.vertices[v_node.name].out_edge_names:
        self.addEdge(v_node.name, out_edge_name)
    # ! Remember to add grouping constraints later
    
    list_of_vf = [_.name for _ in self.graph.top_rtl_parser.traverseVertexInAST()] + [_.name for _ in self.graph.top_rtl_parser.traverseEdgeInAST()]
    for sub_func_node_name in self.graph.hls_prj_manager.getSubInst():
      print("Removing sub-non-dataflow-node {}".format(sub_func_node_name))
      list_of_vf.remove(sub_func_node_name)
    visited = {_:False for _ in list_of_vf}
    
    for i in range(self.No_V):
      if visited[list_of_vf[i]] == False:
        self.topologicalSortUtil(list_of_vf[i], visited, self.topostack)
        
    # print(self.topostack)  # now stack "topostack" has the topological order of all vertices
    # print(len(self.topostack))
    
  def adjacentFloorplan(self):
    _logger.info("!!!")
    init_s2v, init_v2s = self.__getInitialSlotToVerticesMapping()
    iter1_s2v, iter1_v2s = self.__twoWayPartitionMinDistWrapper(init_s2v, init_v2s, Dir.horizontal) # based on die boundary

    iter2_s2v, iter2_v2s = self.__twoWayPartitionMinDistWrapper(iter1_s2v, iter1_v2s, Dir.horizontal) # based on die boundary

    self.s2v, self.v2s = self.__twoWayPartitionMinDistWrapper(iter2_s2v, iter2_v2s, Dir.vertical) # based on ddr ctrl in the middle
    
    _logger.info(["{} {}".format(_[0].getName(), [__.name for __ in _[1]]) for _ in self.s2v.items()])

    self.__initSlotToEdges()
    self.printFloorplan()

  def preprocessEmptySlots(self):
    _logger.info("Adding keys for empty slots to s2v, s2e") # not influencing the original floorplan, can be put to the init part
    all_4x4_slot_names = [_.getName() for _ in self.slot_manager.getAllFourByFourCRSlots()] # get all slots
    empty_4x4_slot_names = []
    for slot_name in all_4x4_slot_names:
      if slot_name not in [_.getName() for _ in self.s2v.keys()]:
        empty_4x4_slot_names.append(slot_name)
    for empty_slot_name in empty_4x4_slot_names:
      empty_slot = self.slot_manager.createSlot(empty_slot_name)
      self.s2v[empty_slot] = []
      self.s2e[empty_slot] = []

  def incrementalFloorplan(self, temp_vname_to_dst_slot):
    '''
    temp_vname_to_dst_slot only contains those vertices whose position (by slot) is to be changed.
    This should be made sure by pre-processing.
    '''
    def updateFloorplan(temp_vname_to_dst_slot):
      for v_name, slot_name in temp_vname_to_dst_slot.items():
        # 1. Remove v from s2v[old slot]
        temp_v = None
        for v in self.v2s.keys():
          if v.name == v_name:
            temp_v = v
        assert temp_v is not None, "v not found in v2s.keys()!"
        old_slot = self.v2s[temp_v]
        # 2. Append v to s2v[new slot]
        new_slot = None
        for slot in self.s2v.keys():
          if slot.getName() == slot_name:
            new_slot = slot
        assert new_slot is not None, "slot not found in s2v.keys()!"
        
        if old_slot == new_slot:
          continue
        _logger.info("Moving vertex {} to slot {}".format(v_name, slot_name))
        
        self.s2v[old_slot].remove(temp_v)
        self.s2v[new_slot].append(temp_v)
        # 3. Update v2s
        self.v2s[temp_v] = new_slot
        # 4. Check edges to be updated
        # # only the InEdges of vertices updated are to be re-floorplanned
        # # edges whose dst vertex
        temp_edges = temp_v.getInEdges()  # -> list
        # self.s2e(old_slot)
        for edge in temp_edges:
          assert edge in self.s2e[old_slot], "edge not in old, alias should be considered"
          self.s2e[old_slot].remove(edge)
          self.s2e[new_slot].append(edge)
    
    
    _logger.info("> > 1. User assigned pblock")
    # {VertexName : SlotName}
    
    updateFloorplan(temp_vname_to_dst_slot)
    
    '''
    _logger.info(self.getVertexNameToSlot()["B_IO_L3_in_U0"].getName())
    _logger.info(self.getVertexNameToSlot()["B_IO_L3_in_U0"].getNeighborSlotName("UP"))
    _logger.info(self.getVertexNameToSlot()["B_IO_L2_in_U0"].getName())
    _logger.info(self.getVertexNameToSlot()["B_IO_L2_in_U0"].getNeighborSlotName("UP"))
    
    
    # Update pblocks
    new_s_name = self.getVertexNameToSlot()["B_IO_L2_in_U0"].getNeighborSlotName("UP")
    temp_new_s = self.slot_manager.createSlot(new_s_name)
    _logger.info([_.getName() for _ in self.slot_manager.getActiveSlotsIncludeRouting()])
    
    # update s2v and v2s
    old_s = ""
    new_s = ""
    temp_v = ""
    for i in self.v2s.keys():
      if i.name == "B_IO_L2_in_U0":
        temp_v = i
        old_s = self.v2s[i]
    for i in self.s2v.keys():
      if i.getName() == new_s_name:
        new_s = i
    if not new_s: # a new slot
      new_s = temp_new_s
      self.s2v[new_s] = []
      # self.s2e[new_s] = []
    self.v2s[i] = new_s
    _logger.info(temp_v)
    _logger.info(old_s)
    _logger.info(new_s)
    
    _logger.info(len(self.s2v[old_s]))
    for i in self.s2v[old_s]:
      _logger.info(i.name)
    self.s2v[old_s].remove(temp_v)
    _logger.info(len(self.s2v[old_s]))
    print(new_s_name)
    _logger.info(len(self.s2v[new_s]))
    for i in self.s2v[new_s]:
      _logger.info(i.name)
    self.s2v[new_s].append(temp_v)
    _logger.info(len(self.s2v[new_s]))
    
    # update s2e -- several types:
    ## 1. Updating source, no change
    ## 2. Updating destination, edges change with destinations
    print("s2e keys:")
    _logger.info([(_.getName(), [__.getName() for __ in self.s2e[_]]) for _ in self.s2e.keys()])
    _logger.info([_.getName() for _ in self.s2e.keys()])
    print("!!!")
    temp_edge = ""
    for i in self.s2e.keys():
      for j in self.s2e[i]:
        if j.getName() == "fifo_B_B_IO_L2_in_0_U":
          _logger.info(i.getName())
          self.s2e[i].remove(j)
          temp_edge = j
          break
        
    assert temp_edge
    print(new_s_name)
    self.s2e[new_s] = [temp_edge]
    
    # for i, v_group in self.s2v.items():
    #   intra, inter = self.getIntraAndInterEdges(v_group)
    #   _logger.info(i.getName())
    #   _logger.info([_.getName() for _ in inter])
    
    for s, es in self.s2e.items():
      _logger.info(s.getName())
      _logger.info([_.getName() for _ in es])
    
    '''
