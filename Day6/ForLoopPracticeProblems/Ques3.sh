read -p "Enter a number: " x;

if [ $x == 0 ] || [ $x == 1 ]
then
	mark=1;
fi

for (( cnt=2; cnt<=$(($x/2)); cnt++ ))
do
	y=$(($x%$cnt));
	echo $y
	if  [ $y == 0 ]
	then
	mark=1;
	echo $mark;
	break;
	else
	mark=0;
	fi
done

if [ $mark == 0 ]
then	echo "$x is a prime number"
else
	echo "$x is not a prime number"
fi
