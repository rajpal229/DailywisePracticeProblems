read -p "Enter the Year: " year;

if [ $(($year%400)) == 0 ]
then
	echo "A Leap Year";
elif [ $(($year%100)) == 0 ]
then
	echo "Not a Leap Year";
elif [ $(($year%4)) == 0 ]
then
	echo "A Leap Year";
else
		echo "Not a Leap Year"
fi
