#Program Incomplete


h=0;
t=0;

while [ $h -lt 11 ] || [ $t -lt 11 ]
do
flip=$((Random%2));

if [ $flip -eq 0 ]
then
	(($h++))
else
	(($t++))
fi
done

if [ $h -eq 11 ]
then
	echo "Head Wins 11 times"
elif [ $t -eq 11 ]
then
	echo "Tail Wins 11 times"
fi
