read -p "enter value : " x;
echo "1 - Inch"
echo "2 - Feet"
echo "3 - Meter"
echo "4 - Acre"
Unit_array=(centimeter meter inches feet acre)
read -p "Enter unit: " unit;
echo "1 - Use Feet/Meter Conversion"
echo "2 - Use Feet/Inch Conversion"
read -p "Enter type of Calculator: " calc;

if [ $calc == 1 ]
then
	case $unit in
		1)
		length=$(($x/3.37))
		echo "$x feet is $length meter"
		;;
		2)
		length= $(($x*3.37))
		echo "$x meter is $length feet"
		;;
	esac
elif [ $calc == 2 ]
then
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
fi
