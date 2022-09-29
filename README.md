# FADO
Floorplan-aware Directive Optimization for HLS designs on Multi-die FPGAs

# Requirements
* Python 3.9: `pip install <the following packages>`
    * defaultlist
    * graphviz
    * anytree
    * pyverilog
    * mip
    * OApackage *for ploting pareto front*
* Apt: `sudo apt install <the following packages>`
    * faketime
    * iverilog
    * swig *pre-requisite for `pip install oapackage`*

# Contents in This Anonymous Repo

In all sub-directories under `<fado_base>/benchmarks/*/`, you can find the following contents:

* _dut.cpp_: source code (containing dataflow/non-dataflow kernels)

* _top_: the __directory__ of initial HLS synthesis reports and RTL code, named after the top function __top__ in _dut.cpp_

* _fado.log_ or _fado\_log.zip_: log during running FADO over *top* directory

* _directives.tcl_: results of directive search

* _constraint.tcl_: results of floorplan search

* _imp_: the __directory__ Vitis log after implementation on the Alveo U250 multi-die FPGA