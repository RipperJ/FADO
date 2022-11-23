import os

HLS_TCL_TEXT = '''
    set top_file_name "{}"
    set top_func_name "{}"
    open_project $top_func_name
    set_top $top_func_name

    add_files "./$top_file_name" 
    open_solution {} -flow_target vivado

    #u250
    {}set_part xcu250-figd2104-2L-e
    # u280
    {}set_part xcu280-fsvh2892-2L-e

    source {}
    
    create_clock -period {}MHz -name default

    config_compile -pipeline_loops 0
    config_dataflow -strict_mode warning
    set_clock_uncertainty 27.000000%
    config_rtl -enable_maxiConservative=1
    config_interface -m_axi_addr64

    # to enable integration with Vitis
    # config_sdx -target xocc

    # csim_design
    csynth_design
    # cosim_design -rtl verilog -setup

    close_project
    puts "HLS completed successfully"
    exit
'''

def run_hls(top_file_name, top_func_name, solution_name, _250, _280, drctv_file, target_freq, silent:bool, timeout=""):
    with open("generate_rtl.tcl", "w") as f:
        f.write(
            HLS_TCL_TEXT.format(
                top_file_name,
                top_func_name,
                solution_name,
                _250,
                _280,
                drctv_file,
                target_freq
            )
        )
    print("HLS starts: top function -> {}".format(top_func_name))
    os.system("{} vitis_hls -f generate_rtl.tcl {}".format(timeout, ">/dev/null" if silent else ""))    # TODO: timeout value interface (timeout 30m vitis_hls -f generate_rtl.tcl)
    print("HLS ends  : top function -> {}".format(top_func_name))
    
def dump_directives_to_tcl(drctv_file_name, directives):
    print("Dumping directives to {}.".format(drctv_file_name))
    AP_type = ["complete", "block", "cyclic"]
    with open(drctv_file_name, "w") as drctv_file:
        for d_unroll in directives["unroll"]:
            drctv_file.write("set_directive_unroll -factor {} {}{}\n".format(d_unroll["factor"], d_unroll["func_name"], d_unroll["loop_label"]))
        for d_pipeline in directives["pipeline"]:
            if d_pipeline["off"] == 1:
                drctv_file.write("set_directive_pipeline -off {}{}\n".format(
                    d_pipeline["func_name"],
                    d_pipeline["loop_label"]
                ))
            else:
                drctv_file.write("set_directive_pipeline -II {} {} {}{}\n".format(
                    d_pipeline["II"],
                    "-rewind" if d_pipeline["rewind"] == 1 else "",
                    d_pipeline["func_name"],
                    d_pipeline["loop_label"]
                ))
        for d_partition in directives["array_partition"]:
            drctv_file.write("set_directive_array_partition -type {} {} -dim {} {} {}\n".format(
                AP_type[d_partition["type"]],
                "-factor {}".format(d_partition["factor"]) if d_partition["type"] != 0 else "", # if complete partition, then no factor
                d_partition["dim"],
                d_partition["func_name"],
                d_partition["array_name"]
            ))
        for d_bind_storage in directives["bind_storage"]:
            drctv_file.write("set_directive_bind_storage \"{}\" {} -impl {} -type {}\n".format(
                d_bind_storage["func_name"],
                d_bind_storage["array_name"],
                d_bind_storage["impl"],
                d_bind_storage["type"]
            ))