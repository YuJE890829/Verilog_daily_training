onerror {exit -code 1}
vlib work
vlog -work work 3to8_decoder.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.decoder3to8_vlg_vec_tst -voptargs="+acc"
vcd file -direction 3to8_decoder.msim.vcd
vcd add -internal decoder3to8_vlg_vec_tst/*
vcd add -internal decoder3to8_vlg_vec_tst/i1/*
run -all
quit -f
