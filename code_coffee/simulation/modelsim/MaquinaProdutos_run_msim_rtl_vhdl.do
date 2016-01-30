transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Rui Oliveira/Desktop/trabalho final/Bin7SegDecoder.vhd}
vcom -93 -work work {C:/Users/Rui Oliveira/Desktop/trabalho final/DebounceUnit.vhd}
vcom -93 -work work {C:/Users/Rui Oliveira/Desktop/trabalho final/FreqDivider.vhd}
vcom -93 -work work {C:/Users/Rui Oliveira/Desktop/trabalho final/LogicAcucar.vhd}
vcom -93 -work work {C:/Users/Rui Oliveira/Desktop/trabalho final/LogicProdutos.vhd}
vcom -93 -work work {C:/Users/Rui Oliveira/Desktop/trabalho final/LogicTroco.vhd}
vcom -93 -work work {C:/Users/Rui Oliveira/Desktop/trabalho final/PEncAdapt.vhd}
vcom -93 -work work {C:/Users/Rui Oliveira/Desktop/trabalho final/maquinaDeCafe.vhd}

