onerror {exit -code 1}
vlib work
vlog -work work 4bit_CLGadder.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.fourbits_CLGadder_vlg_vec_tst -voptargs="+acc"
vcd file -direction 4bit_CLGadder.msim.vcd
vcd add -internal fourbits_CLGadder_vlg_vec_tst/*
vcd add -internal fourbits_CLGadder_vlg_vec_tst/i1/*
run -all
quit -f
