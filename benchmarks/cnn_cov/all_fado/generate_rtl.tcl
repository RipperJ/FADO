
    set top_file_name "dut.cpp"
    set top_func_name "top"
    open_project $top_func_name
    set_top $top_func_name

    add_files "./$top_file_name" 
    open_solution solution

    #u250
    set_part xcu250-figd2104-2L-e
    # u280
    #set_part xcu280-fsvh2892-2L-e

    source directives.tcl
    
    create_clock -period 300MHz -name default

    config_compile -pipeline_loops 0
    config_dataflow -strict_mode warning
    set_clock_uncertainty 27.000000%
    config_rtl -enable_maxiConservative=1
    config_interface -m_axi_addr64

    # to enable integration with Vitis
    config_sdx -target xocc

    # csim_design
    csynth_design
    # cosim_design -rtl verilog -setup

    close_project
    puts "HLS completed successfully"
    exit
