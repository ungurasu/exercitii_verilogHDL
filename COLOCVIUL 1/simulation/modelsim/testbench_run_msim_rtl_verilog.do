transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Andrei/Documents/CID/COLOCVIUL\ 1 {C:/Users/Andrei/Documents/CID/COLOCVIUL 1/testbench.v}
vlog -vlog01compat -work work +incdir+C:/Users/Andrei/Documents/CID/COLOCVIUL\ 1 {C:/Users/Andrei/Documents/CID/COLOCVIUL 1/parityChecker.v}
vlog -vlog01compat -work work +incdir+C:/Users/Andrei/Documents/CID/COLOCVIUL\ 1 {C:/Users/Andrei/Documents/CID/COLOCVIUL 1/sumator.v}
vlog -vlog01compat -work work +incdir+C:/Users/Andrei/Documents/CID/COLOCVIUL\ 1 {C:/Users/Andrei/Documents/CID/COLOCVIUL 1/comparatort.v}
vlog -vlog01compat -work work +incdir+C:/Users/Andrei/Documents/CID/COLOCVIUL\ 1 {C:/Users/Andrei/Documents/CID/COLOCVIUL 1/transcodor.v}
vlog -vlog01compat -work work +incdir+C:/Users/Andrei/Documents/CID/COLOCVIUL\ 1 {C:/Users/Andrei/Documents/CID/COLOCVIUL 1/muxt.v}
vlog -vlog01compat -work work +incdir+C:/Users/Andrei/Documents/CID/COLOCVIUL\ 1 {C:/Users/Andrei/Documents/CID/COLOCVIUL 1/top.v}

