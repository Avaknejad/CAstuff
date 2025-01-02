alias clc ".main clear"

clc
exec vlib work
vmap work work

# Define paths for your testbench (TB) and HDL files
set TB                   "MultiplierTest"
set TB_file              "../src/test/multiplier.test.v"
set inc_path "inc"
set hdl_path             "../src/hdl"

# Set simulation run time
set run_time             "1000 ns"
# set run_time           "-all"

#============================ Add verilog files  ===============================
# Please add other module here
set hdl_files [exec find $hdl_path -type f -name "*.v"]

foreach file $hdl_files {
    vlog +acc -incr -source +define+SIM $file
}

vlog    +acc -incr -source  +incdir+$inc_path +define+SIM    $TB_file
onerror {break}

#================================ Simulation ====================================
vsim    -voptargs=+acc -debugDB $TB

#======================= Adding signals to the wave window =====================
add wave -hex -group        {TB}               sim:/$TB/*
add wave -hex -group -r     {all}              sim:/$TB/*
add wave -position 0 -unsigned sim:/$TB/u_Multiplier/u_MultiplierController/ps
add wave -position 0 -decimal sim:/$TB/u_Multiplier/u_MultiplierDataPath/out
add wave -position 0 -decimal sim:/$TB/u_Multiplier/u_MultiplierDataPath/outAdder

#=========================== Configure wave signals =============================
# configure wave -signalnamewidth 2

#================================= Run Simulation ===============================
run $run_time