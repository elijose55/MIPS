onerror {exit -code 1}
vlib work
vcom -work work tipoR.vho
vcom -work work Waveform2.vwf.vht
vsim -novopt -c -t 1ps -sdfmax topLevel_vhd_vec_tst/i1=tipoR_vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.topLevel_vhd_vec_tst
vcd file -direction tipoR.msim.vcd
vcd add -internal topLevel_vhd_vec_tst/*
vcd add -internal topLevel_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
