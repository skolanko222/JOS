vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../lab2.gen/sources_1/ip/ila_scope/hdl/verilog" \
"../../../../lab2.gen/sources_1/ip/ila_scope/sim/ila_scope.v" \


vlog -work xil_defaultlib \
"glbl.v"

