
set terminal png
set output fileout
set title "Average temperature in 2000 and 2010"
set multiplot                       
set size 1, 0.5

set origin 0.0,0.5
set xlabel "temp-2000"
plot filename1 using 1 w l linecolor 3 notitle
unset title
set origin 0.0,0.0
set xlabel "temp-2010"
plot filename2 using 1 w l notitle

unset multiplot