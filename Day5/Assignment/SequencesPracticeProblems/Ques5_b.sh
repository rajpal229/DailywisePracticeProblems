echo "Enter Rectengular Plot Dimensions"
read -p "Length: " l;
read -p "breadth: " b;

echo "1 - Inch"
echo "2 - Feet"
echo "3 - Meter"
read -p "Enter unit: " unit;
echo "1 - Use Feet/Meter Conversion"
echo "2 - Use Feet/Inch Conversion"
read -p "Enter type of Calculator: " calc;

#for l
if [ $calc == 1 ]
then
	case $unit in
		2)
		length=`awk 'BEGIN{printf("%0.5f", '$l' * 0.3048)}'`
		echo "$l feet is $length meter"
			;;
		3)
		length=`awk 'BEGIN{printf("%0.5f", '$l' * 3.37)}'`
		echo "$l meter is $length feet"
			;;
	esac
elif [ $calc == 2 ]
then
	case $unit in
		1)
		length=`awk 'BEGIN{printf("%0.5f", '$l' /12)}'`
		echo "$l inches is $length feet"
			;;
		2)
		length=`awk 'BEGIN{printf("%0.5f", '$l' *12)}'`
		echo "$l feet is $length inches"
			;;
	esac
fi

#for b
if [ $calc == 1 ]
then
	case $unit in
		2)
		breadth=`awk 'BEGIN{printf("%0.5f", '$b' * 0.3048)}'`
		echo "$b feet is $breadth meter"
			;;
		3)
		breadth=`awk 'BEGIN{printf("%0.5f", '$b' * 3.37)}'`
		echo "$b meter is $breadth feet"
			;;
	esac
elif [ $calc == 2 ]
then
	case $unit in
		1)
		breadth=`awk 'BEGIN{printf("%0.5f", '$b' /12)}'`
		echo "$b inches is $breadth feet"
			;;
		2)
		breadth=`awk 'BEGIN{printf("%0.5f", '$b' *12)}'`
		echo "$b feet is $breadth inches"
			;;
	esac
fi
echo $length
echo $breadth
area=`awk 'BEGIN{printf("%0.5f", '$length' * '$breadth')}'`
echo "Plot in meter squares = "$area

