function degFdegCconversion() {
	case $scale in
		1)
		result=`awk 'BEGIN{printf("%0.5f",'$temp' *9/5+32)}'`
			;;
		2)
		result=`awk 'BEGIN{printf("%0.5f",('$temp' - 32) * 5/9)}'`
		;;
	esac
}

read -p "Enter Temperature: " temp;
echo "1 - Celcius"
echo "2 - Fahrenheit"
read -p "Enter Scale Type: " scale;
degFdegCconversion $scale;

if [ $scale == 1 ]
then
echo "$temp degree Celcius are $result degree Fahrenheit"
else
echo "$temp degree Fahrenheit are $result degree Celius"
fi
