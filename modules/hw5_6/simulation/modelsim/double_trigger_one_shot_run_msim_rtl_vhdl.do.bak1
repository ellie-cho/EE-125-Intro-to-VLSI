transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/intelFPGA_lite/18.0/my_designs/hw5_6/double_trigger_one_shot.vhd}

vcom -2008 -work work {C:/intelFPGA_lite/18.0/my_designs/hw5_6/double_trigger_one_shot_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  double_trigger_one_shot_tb

add wave *
view structure
view signals
run -all
