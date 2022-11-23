read -p "enter value : " x;
echo "1 - Inch"
echo "2 - Feet"
# echo "3 - Meter"
# echo "4 - Acre"
Unit_array=(centimeter meter inches feet acre)
read -p "Enter unit: " unit;
case $unit in
	1)
	length=$(($x/12))
	echo "$x inches is $length feet"
		;;
	2)
	length= $(($x*12))
	echo "$x feet is $length inches"
		;;
esac
