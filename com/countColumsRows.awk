BEGIN {
    FS=",";
    OFS=",";
} NR == 1 {
    print "Columns: "NF;
} END { print "Rows: "NR;}