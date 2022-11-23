read -p "Enter the Number: " x;
answer=1;

for (( cnt=1; cnt<=x; cnt++ ))
do
	answer=$(($answer*$cnt));
done
echo $answer
