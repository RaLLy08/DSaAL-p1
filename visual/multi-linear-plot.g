set title "Temperature for Russia"
set multiplot
set size 1, 0.5

set origin 0.0,0.5
set xlabel "Year"
p "temp_russia.txt" u 1:2 w l t "Average Temperature"
unset title
set origin 0.0,0.0
p "temp_russia.txt" u 1:3 w l t "Average Temperature Uncertainty"

unset multiplot