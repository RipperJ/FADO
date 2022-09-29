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

* *dut.cpp*: source code (containing dataflow/non-dataflow kernels)
* *top*: the __directory__ of initial HLS synthesis reports and RTL code, named after the top function __top__ in *dut.cpp*
* *fado.log* or *fado_log.zip*: log during running FADO over *top* directory
* *directives.tcl*: results of directive search
* *constraint.tcl*: results of floorplan search
* *imp*: the __directory__ Vitis log after implementation on the Alveo U250 multi-die FPGA