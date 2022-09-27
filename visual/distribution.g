set yrange [0:120]
set title "Temperature distribution for Azerbaijan"
set style fill solid 0.5
plot "temp_avrg.txt" using 1:2 title 'distribution' with boxes, "" using 1:2 title "line" w lp lw 3