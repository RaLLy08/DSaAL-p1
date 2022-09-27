set terminal png size 1000,800
set output fileout
set title mytitle
set boxwidth 0.5
set style fill solid
set datafile separator ","
set xtics rotate
plot filename u 4:xticlabels(3) w boxes lc color t productname
