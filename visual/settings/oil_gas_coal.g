set terminal png
set output fileout
set title "Compare coal, oil and gas productions for Turkey"
set xlabel "Year"
plot filename using 1:2 w l lc 7 title "coal", "" using 1:3 w l lc 2 title "oil","" using 1:4 w l lc 9 title "gas"
