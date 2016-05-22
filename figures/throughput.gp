set terminal postscript eps enhanced "NimbusSanL-Regu, 20" fontfile "/usr/share/fonts/type1/texlive-fonts-recommended/uhvr8a.pfb"


set style line 1 lt 1 lw 5 pt 2 ps 2 lc rgb "#d61818"
set style line 2 lt 2 lw 5 pt 12 ps 2 lc rgb "#072c76"

set size 1.0,1.0
#set multiplot

set xlabel "number of threads" offset 0,0.5
set ylabel "throughput" offset 2,0
set key font ",30"
set key spacing 4

set for [i=0:5] xtics (0,2**i)
set key right center

set xrange [1:32]
# plot G
set ylabel "throughput (req/sec)" offset 1,0 font ",20"
set yrange [0:45000]
set ytics 10000
set origin 0.0,0.15
set size 1.0,0.85
#set title "(g) Redis"
#set label 11 center at graph 0.5,-0.25 "Redis" font ",35"

plot 'throughput.dat' using 1:14 with linespoints title "Redis" ls 1,'throughput.dat' using 1:15 with linespoints title "Tripod" ls 2
#plot sin(x) ls 7
unset yrange
unset ytics

