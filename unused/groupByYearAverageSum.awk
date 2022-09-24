# grops and caclulate the average of each integer group

BEGIN {
    FS=",";
    OFS=",";
} 
NR == 1 {
    print $0;
}
NR > 1 {
    # removing spaces
    # gsub(/\s/,"",$NF);
    groupByKey = $2$3;

    for (i = 1; i<=NF ; i++) {
        if ($i ~ /^[0-9]+$/) {
            keys[groupByKey][i"sum"] += $i;
            keys[groupByKey][i"count"] ++;
        } else {
            keys[groupByKey][i"value"] = $i;
        }
    }

    # group years
    rows[groupByKey];

} END {
    for (key in rows) {
        for (i = 1; i<=NF ; i++) {
            comma = (NF == i) ? "" : ",";
            sum = keys[key][i"sum"];
            count = keys[key][i"count"];
            value = keys[key][i"value"];

            if (sum ~ /^[0-9]+$/ && count ~ /^[0-9]+$/) {
                printf(sum/count comma);
            } else {
                printf(value comma);
            }

        }

	    printf("\n");
    }
}