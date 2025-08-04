#!/bin/bash

iverilog -o ripple_adder_tb 4bit_ripple_adder.v tb_4bit_ripple_adder.v
vvp ripple_adder_tb
gtkwave output.vcd
