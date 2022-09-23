# input $1 yyyy-mm-dd
# output $1 yyyy

{
    # parse year from date
    gsub(/-[0-9]{2}-[0-9]{2}/, "", $1);
    print $0;
}