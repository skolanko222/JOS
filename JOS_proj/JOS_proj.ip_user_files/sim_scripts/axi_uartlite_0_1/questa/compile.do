vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr -mfcu  \
"../../../../JOS_old_V.gen/sources_1/ip/axi_uartlite_0_1/axi_uartlite_0_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"
