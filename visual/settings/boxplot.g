set terminal png truecolor
set output fileout
 
set grid
set style fill solid 0.25 border -1
set style boxplot outliers pointtype 7
set style data boxplot
 

 
set xtics ('Coal' 1, 'Oil' 2, 'Gas' 3)
plot filename using (1):2 title 'coal production',\
	'' using (2):3 title 'oil production',\
	'' using (3):4 title 'gas production'