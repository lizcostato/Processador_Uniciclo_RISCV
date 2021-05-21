transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Documentos/Faculdade/OAC/Trab3/mem_rv/mem_rv.vhd}

vcom -93 -work work {D:/Documentos/Faculdade/OAC/Trab3/mem_rv/testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  Test1

add wave *
view structure
view signals
run -all
