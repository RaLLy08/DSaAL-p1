set terminal png size 1300,1000
set output fileout
set multiplot layout 2,3 title "Productions in 1990 and 2013" font ",22"                 
set grid
set datafile separator ","
set xtics rotate
set boxwidth 0.5
set style fill solid
set xlabel "year-1990"
plot filename1 using 4:xticlabels(3) w boxes linecolor 1 t "coal"
plot filename2 using 4:xticlabels(3) w boxes linecolor 2 t "oil"
plot filename3 using 4:xticlabels(3) w boxes linecolor 3 t "gas"
set xlabel "year-2013"
plot filename4 using 4:xticlabels(3) w boxes linecolor 4 t "coal"
plot filename5 using 4:xticlabels(3) w boxes linecolor 5 t "oil"
plot filename6 using 4:xticlabels(3) w boxes linecolor 6 t "gas"
unset multiplot