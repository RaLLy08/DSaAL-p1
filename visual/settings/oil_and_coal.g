
set terminal png medium size 1000,700
set output fileout
set title "Compare coal and oil productions for Germany"
set xlabel "Year"
plot filename using 1:2 w l lc 7 title "coal", "" using 1:3 w l lc 2 title "oil"
