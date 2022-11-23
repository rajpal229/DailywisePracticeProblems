read -p "Enter the value: " x;

if [ $x == 1 ]
then
	echo "Unit"
elif [ $x == 10 ]
then
	echo "Ten"
elif [ $x == 100 ]
then
	echo "Hundred"
elif [ $x == 1000 ]
then
	echo "Thousand"
elif [ $x == 10000 ]
then
	echo "Ten Thousand"
elif [ $x == 100000 ]
then
	echo "Lakh"
elif [ $x == 1000000 ]
then
	echo "Ten Lakh"
elif [ $x == 10000000 ]
then
	echo "Crore"
else
	echo "Invalid Input"
fi
