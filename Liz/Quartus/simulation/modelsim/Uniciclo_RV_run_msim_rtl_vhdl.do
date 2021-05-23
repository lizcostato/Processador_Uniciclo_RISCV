transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/Users/Administrador/Documents/UNB/sexto_semestre/OAC/Projeto_Final/Quartus/ularv.vhd}
vcom -2008 -work work {C:/Users/Administrador/Documents/UNB/sexto_semestre/OAC/Projeto_Final/Quartus/somador32.vhd}
vcom -2008 -work work {C:/Users/Administrador/Documents/UNB/sexto_semestre/OAC/Projeto_Final/Quartus/RISCV_Uniciclo_Pkg.vhd}
vcom -2008 -work work {C:/Users/Administrador/Documents/UNB/sexto_semestre/OAC/Projeto_Final/Quartus/PC.vhd}
vcom -2008 -work work {C:/Users/Administrador/Documents/UNB/sexto_semestre/OAC/Projeto_Final/Quartus/mux2.vhd}
vcom -2008 -work work {C:/Users/Administrador/Documents/UNB/sexto_semestre/OAC/Projeto_Final/Quartus/mem_rv.vhd}
vcom -2008 -work work {C:/Users/Administrador/Documents/UNB/sexto_semestre/OAC/Projeto_Final/Quartus/genImm32.vhd}
vcom -2008 -work work {C:/Users/Administrador/Documents/UNB/sexto_semestre/OAC/Projeto_Final/Quartus/control_alu.vhd}
vcom -2008 -work work {C:/Users/Administrador/Documents/UNB/sexto_semestre/OAC/Projeto_Final/Quartus/control.vhd}
vcom -2008 -work work {C:/Users/Administrador/Documents/UNB/sexto_semestre/OAC/Projeto_Final/Quartus/banc_reg.vhd}
vcom -2008 -work work {C:/Users/Administrador/Documents/UNB/sexto_semestre/OAC/Projeto_Final/Quartus/top_level.vhd}
vcom -2008 -work work {C:/Users/Administrador/Documents/UNB/sexto_semestre/OAC/Projeto_Final/Quartus/mem_ROM_rv.vhd}

