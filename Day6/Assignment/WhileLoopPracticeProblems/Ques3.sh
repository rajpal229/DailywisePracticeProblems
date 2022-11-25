#Program Incomplete

#while [[ h -le 11 && t -le 11 ]]
#do
#flip=$((Random%2));

#if [ $flip == 0 ]
#then
#	h=$(($h+1))
#else
#	t=$(($t+1))
#fi
#done

#if [ $h == 11 ]
#then
#	echo "Head Wins 11 times"
#elif [ $t == 11 ]
#then
#	echo "Tail Wins 11 times"
#fi

head=0;
tail=0;

for (( i=1; head<=5; i++ )) && (( i=1; tail<=5; i++ ))
do
flip=$((RANDOM%2))

if [ $flip == 0 ]
then
	echo "Heads"
	((head++))
else
	echo "Tails"
	((tail++))
fi
done
echo "$head times head won and $tail times tail won"
