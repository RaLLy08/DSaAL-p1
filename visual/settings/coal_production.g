
set terminal png medium size 1000,700
set output fileout
set title "Coal production for hot and cold countries"
set multiplot layout 2,2                  
set origin 0.0,0.5
set boxwidth 0.5
set style fill solid
set ylabel "coal production for cold countries"
plot filename1 using 3:xtic(6) w l linecolor 9 notitle
plot filename1 using 3:xtic(6) w boxes linecolor 8 notitle
unset title
set origin 0.0,0.0
set xtics rotate
set ylabel "coal production for hot countries"
plot filename2 using 3:xtic(6) w l linecolor 3 notitle
plot filename2 using 3:xtic(6) w boxes linecolor 5 notitle
unset multiplot