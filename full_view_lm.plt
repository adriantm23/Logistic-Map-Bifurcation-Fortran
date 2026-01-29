set terminal wxt size 1000,700 title "Logistic Map Interactive"
set title "Logistic Map: Bifurcation Diagram" font ",14"
set xlabel "Growth Rate (r)"
set ylabel "Population (x_n)"

set xrange [0:4.0]
set yrange [0:1]



plot "logistic_map.dat" using 1:2 with dots lc rgb "#70000000" notitle

