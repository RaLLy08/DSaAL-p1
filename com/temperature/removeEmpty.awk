# removes row if $2 or $3 is empty;

BEGIN {
    FS=",";
} 
{
    if ($2 != "" && $3 != "") {
        print $0;
    }
}