transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Andrei/Documents/CID/tema\ curs\ 4 {C:/Users/Andrei/Documents/CID/tema curs 4/testbench.v}
vlog -vlog01compat -work work +incdir+C:/Users/Andrei/Documents/CID/tema\ curs\ 4 {C:/Users/Andrei/Documents/CID/tema curs 4/dnor.v}
vlog -vlog01compat -work work +incdir+C:/Users/Andrei/Documents/CID/tema\ curs\ 4 {C:/Users/Andrei/Documents/CID/tema curs 4/dnand.v}
vlog -vlog01compat -work work +incdir+C:/Users/Andrei/Documents/CID/tema\ curs\ 4 {C:/Users/Andrei/Documents/CID/tema curs 4/dor.v}
vlog -vlog01compat -work work +incdir+C:/Users/Andrei/Documents/CID/tema\ curs\ 4 {C:/Users/Andrei/Documents/CID/tema curs 4/circuit1.v}
vlog -vlog01compat -work work +incdir+C:/Users/Andrei/Documents/CID/tema\ curs\ 4 {C:/Users/Andrei/Documents/CID/tema curs 4/flipflop.v}
vlog -vlog01compat -work work +incdir+C:/Users/Andrei/Documents/CID/tema\ curs\ 4 {C:/Users/Andrei/Documents/CID/tema curs 4/circuit2.v}

