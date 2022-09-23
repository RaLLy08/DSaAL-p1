# input $1:num $2:num $3:num $4: string
# output groups by $1 + $4, calcules average for $2, $3 in each group

BEGIN {
    FS=",";
    OFS=",";
} 
NR == 1 {
    print $0;
}
NR > 1 {
    # removing spaces
    # gsub(/\s/,"",$4);

    groupByKey = $1$4;
    # group years
    years[groupByKey] = $1;
    countries[groupByKey] = $4;
    tempByYears[groupByKey] += $2;
    tempUnc[groupByKey] += $3;

    # if the temperature is't defined skip for average coef
    if ($2 != "") {
	 tempYearCount[groupByKey]++;
    }

    # if the temperature uncertainty is't defined skip for average coef
    if ($3 != "") {
	 uncTempYearCount[groupByKey]++;
    }   


} END {
    for (key in tempByYears) {
        averageTemp = tempByYears[key] / tempYearCount[key];
        averageTempUnc = tempUnc[key] / uncTempYearCount[key];

	    print years[key], averageTemp, averageTempUnc, countries[key]
    }
}