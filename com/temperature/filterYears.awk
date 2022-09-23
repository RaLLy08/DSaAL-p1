# input $1:num
# output $1 > 1990 

BEGIN {
    FS=",";
    OFS=",";
} {
    if ($1 >= 1990) print $0;
}