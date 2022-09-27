set terminal png size 1300,1000
set output fileout
set multiplot layout 1,3 title "Top 5 countries in 2013" font ",22"                 
set grid
set datafile separator ","
set xtics rotate
set boxwidth 0.7
set style fill solid
set xlabel "year-2013"
set title "Hydro consumption"
plot filename1 using 4:xticlabels(3) w boxes linecolor 2 t "hydro"
set title "Solar consumption"
plot filename2 using 4:xticlabels(3) w boxes linecolor 3 t "solar"
set title "Wind consumption"
plot filename3 using 4:xticlabels(3) w boxes linecolor 1 t "wind"
unset multiplot