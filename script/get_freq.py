import os
import re
import sys

PROJECT_NAME = "top"
TOP_FUNC = "top"
SOLUTION = "solution"

print("Usage: `python get_freq.py $(realpath [benchmark base])`")
path_base = sys.argv[1]
path_rela = os.popen('find {} -name "reports"'.format(path_base)).readline().rstrip()
print("Relative path: {}".format(path_rela))
path_full = '{}/link/imp'.format(path_rela)
print("Full vitis report path: {}".format(path_full))

timing_rpt_find = os.popen('find {} -name "*timing_summary_postroute_physopted.rpt"'.format(path_full)).readline().rstrip()
assert timing_rpt_find != ""
print("Timing report found: {}\n".format(timing_rpt_find))

slr_rpt_find = os.popen('find {} -name "*slr_util_routed.rpt"'.format(path_full)).readline().rstrip()
assert slr_rpt_find != ""
print("SLR/SLL report found: {}\n".format(slr_rpt_find))

hls_rpt_find = os.popen('find {}/{}/{}/syn/report/ -name "{}_csynth.rpt"'.format(path_base, PROJECT_NAME, SOLUTION, TOP_FUNC)).readline().rstrip()
assert hls_rpt_find != "", hls_rpt_find
print("HLS report found: {}\n".format(hls_rpt_find))

with open(timing_rpt_find, 'r') as timing_rpt_f:
    lines = timing_rpt_f.readlines()

    i = 0
    while i < len(lines):
        if lines[i].lstrip().startswith("WNS(ns)"):
            i += 2
            break
        i += 1
    WNS = float(lines[i].split()[0])
    # print(WNS)

# Get Target Clock Period from Vitis Script
with open(path_base + '/run_vitis.sh', 'r') as vitis_script:
    lines = vitis_script.readlines()
    target = 0
    for line in lines:
        if line.strip().startswith("--kernel_frequency"):
            target = float(line.split()[1])
            break
    assert target != 0
    # print(target)

Fmax = 1000 / ((1000 / target) - WNS)
print("Fmax: {:.2f}".format(Fmax))

# Get SLL utilization from SLR/SLL report -- temporary
# TODO: Need to change to SLL report from Floorplanning Result
with open(slr_rpt_find, "r") as slr_rpt_f:
    lines = slr_rpt_f.readlines()
    i = 0
    SLL_util = -1
    for line in lines:
        if line.find("Total SLLs Used") != -1:
            SLL_util = int(line.split("|")[2])
    assert SLL_util != -1, SLL_util
# print("SLL util: {}".format(SLL_util))

with open(hls_rpt_find, "r") as hls_rpt_f:
    # U250 Total Resource
    Total_BRAM = 1344
    Total_DSP = 3072
    Total_FF = 864000
    Total_LUT = 432000
    Total_URAM = 320
    BRAM = -1
    DSP = -1
    FF = -1
    LUT = -1
    URAM = -1
    BRAM_ratio = -1
    DSP_ratio = -1
    FF_ratio = -1
    LUT_ratio = -1
    URAM_ratio = -1
    for line in hls_rpt_f:    
        if ('Utilization Estimates' in line):
            break
    for line in hls_rpt_f:
        if ('Name' in line):
            assert re.search(r'BRAM[_]18K[ |]*DSP[48E |]*FF[ |]*LUT[ |]*URAM', line), f'HLS has changed the item order in reports! {rpt_addr} : {line}'

        if ('Total' in line):
            x = re.findall(r'\d+', line)
            BRAM, DSP, FF, LUT, URAM = [int(_) for _ in x[0:5]]
            # return {'BRAM':int(x[0]), 'DSP':int(x[1]), 'FF':int(x[2]), 'LUT':int(x[3]), 'URAM':int(x[4])}
            break
# print("HLS rpt:")
# print("BRAM util: {}".format(BRAM))
# print("DSP util: {}".format(DSP))
# print("FF util: {}".format(FF))
# print("LUT util: {}".format(LUT))
# print("URAM util: {}".format(URAM))
    
result = open("result.txt", 'a+')
result.seek(2)
result.write("{} {} {} {:.4f} {:.4f} {:.4f} {:.4f} {:.4f}\n".format(path_base.split('/')[-1] ,Fmax, SLL_util, BRAM/Total_BRAM, DSP/Total_DSP, FF/Total_FF, LUT/Total_LUT, URAM/Total_URAM))
