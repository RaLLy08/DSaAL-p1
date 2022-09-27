set terminal png size 1300,1000
set output fileout
set multiplot layout 1,2 title "Green house gas emissions" font ",22"                 
set grid
set title "gas emissions in Azerbaijan"
plot filename2 using 1:5 w l linecolor 7 notitle
set datafile separator ","
set boxwidth 0.9
set style fill solid
set title "gas emissions for top 5 countries in 2013"
plot filename using 4:xticlabels(3) w boxes linecolor 1 notitle
unset multiplot