read -p "Enter the day: " day;
read -p "Enter the month(in numbers): " month;
echo "Date is: $day-$month"

if [ $month -lt 3 ]
then
	echo "False";
elif [ $month -gt 6 ]
then
	echo "False";
elif [ $month == 3 ] && [ $day -le 20 ]
then
	echo "False";
elif [ $month == 6 ] && [ $day -ge 20 ]
then
	echo "False";
else
	echo "True";
fi

