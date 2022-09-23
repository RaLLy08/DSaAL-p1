# input $3:num
# output $3 > 1990 

BEGIN {
    FS=",";
    OFS=",";
} {
    if ($3 >= 1990) print $0;
}