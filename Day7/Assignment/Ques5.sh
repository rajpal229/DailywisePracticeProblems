for (( i=1; i<=100; i++ ))
	do
	qoutient=$((i/10));
	reminder=$((i%10));
		if [ $qoutient == $reminder ]
		then
			arr[((index++))]=$(($i));
		fi
	done
echo ${arr[@]}
