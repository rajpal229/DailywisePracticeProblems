read -p "enter 1st value: " x;
read -p "enter 2nd value: " y;
if [ $x -gt $y ]
then
	echo "$x is greater than or equal to $y";
elif [ $x -eq $y ]
then
	echo "$x is equal to $y";
else
	echo "$x is less than $y";
fi
