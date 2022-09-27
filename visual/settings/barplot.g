
set terminal png medium size 800,600
set output fileout
set title "5 contries temperature according to different years"
set multiplot layout 2,2                      

set yrange [0:30]
set origin 0.0,0.5
set boxwidth 0.5
set style fill solid
set xlabel "year-2000"
plot filename1 using 1:xtic(6) w boxes linecolor 3 notitle
unset title
set xlabel "year-2010"
plot filename2 using 1:xtic(6) w boxes linecolor 2 notitle
set xlabel "year-1995"
plot filename4 using 1:xtic(6) w boxes linecolor 8 notitle
set xlabel "year-1990"
plot filename3 using 1:xtic(6) w boxes linecolor 5 notitle
unset multiplot