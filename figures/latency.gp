set terminal postscript eps enhanced "NimbusSanL-Regu, 20" fontfile "/usr/share/fonts/type1/texlive-fonts-recommended/uhvr8a.pfb"

##set multiplot layout 3,3
## LABEL ##
##set ylabel "throughput"
## font ",16" offset 2,0
##set xlabel "number of threads"
## font ",16"

set style line 1 lt 1 lw 5 pt 2 ps 3 lc rgb "#d61818"
set style line 2 lt 2 lw 5 pt 12 ps 3 lc rgb "#072c76"


set size 1.0,1.0
#set multiplot

set xlabel "number of threads" offset 0,0.5
set ylabel "latency" offset 2,0
set key font ",30"
set key spacing 4

set ylabel "response time (us)" offset 1,0 font ",20"

set xrange [1:16]
#set logscale x 2
set for [i=0:5] xtics (0,2**i)
set key right center

# plot G
set key left top
set key at 3,785
set xrange [1:32]
set yrange [300:800]
set ytics 100
set origin 0.0,0.05
set size 1.0,0.85
#set title "(g) Redis"
#set label 11 center at graph 0.5,-0.18 "(g) Redis" font ",25"

plot 'latency.dat' using 1:14 with linespoints title "Redis" ls 1,'latency.dat' using 1:15 with linespoints title "Tripod" ls 2
#plot sin(x) ls 7
unset yrange
unset ytics

