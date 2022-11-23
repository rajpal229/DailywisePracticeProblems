read -p "Enter the range upto which prime numbers are to be printed:" x;

for (( cnt_1=0; cnt_1<=$x; cnt_1++ ))
do
	if [ $x -eq 0 ] || [ $x -eq 1 ]
	then
	   	mark=1;
	elif [ $x -eq 2 ] || [ $x -eq 3 ]
	then
		mark=0;
	fi

	for (( cnt_2=2; cnt_2<=$(($cnt_1/2)); ++cnt_2 ))
	do
        	y=$(($cnt_1%$cnt_2));
        	if  [ $y -eq 0 ]
        	then
        	mark=1
        	break;
        	fi
	done
	if [ $mark -eq 0 ]
	then    echo "$cnt_1 is a prime number"
	else
	        echo "$cnt_1 is not a prime number"
	fi
done
