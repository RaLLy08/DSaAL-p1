set style fill solid 0.5
set style data boxplot

unset key
set xtics ("Year" 1, "AvrgTemperature" 2, "AvrgTempUncertainty" 3)

plot 'result.txt' using (1):2, 'nn.txt' using (2):3, 'nn.txt' using (3):(4)
