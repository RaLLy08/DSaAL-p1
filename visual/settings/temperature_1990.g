set terminal png
set output fileout
set title "Average temperatures for all countries in 1990"


plot filename u 1 w l t "temperature"
