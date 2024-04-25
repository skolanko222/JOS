#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2023.1 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Fri Apr 19 14:20:54 CEST 2024
# SW Build 3865809 on Sun May  7 15:04:56 MDT 2023
#
# IP Build 3864474 on Sun May  7 20:36:21 MDT 2023
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim tb_behav -key {Behavioral:sim_1:Functional:tb} -tclbatch tb.tcl -view /home/stud2021/1kolanko/JOS/lab3/uart/tb_behav1.wcfg -log simulate.log"
xsim tb_behav -key {Behavioral:sim_1:Functional:tb} -tclbatch tb.tcl -view /home/stud2021/1kolanko/JOS/lab3/uart/tb_behav1.wcfg -log simulate.log

