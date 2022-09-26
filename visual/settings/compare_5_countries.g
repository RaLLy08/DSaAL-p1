
set terminal png medium size 640,480
set output fileout
set title "5 contries temperature according to different years"
set multiplot layout 2,2                      


set origin 0.0,0.5

set xlabel "year-2000"
plot filename1 using 1:xticlabels(6) w l linecolor 3 notitle
unset title
set xlabel "year-2010"
plot filename2 using 1:xticlabels(6) w l linecolor 2 notitle
set xlabel "year-1995"
plot filename4 using 1:xticlabels(6) w l linecolor 8 notitle
set xlabel "year-1990"
plot filename3 using 1:xticlabels(6) w l linecolor 5 notitle
unset multiplot