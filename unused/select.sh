temperaturesFile="./result/temperature/result.csv"
countries=`cat  $temperaturesFile | awk -F, '{ gsub(/\s/,"_",$4); print $4 }' | awk '!seen[$0] && NR > 1 {print} {++seen[$0]}' | sort`
export COLUMNS=1

# Parent menu items declared here
select brand in $countries
do
echo "You have chosen $brand"
break
done