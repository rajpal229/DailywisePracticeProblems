number=0;
randomNumber[((number++))]=$((random_1=$((((RANDOM%89+10))))));
randomNumber[((number++))]=$((random_2=$((((RANDOM%89+10))))));
randomNumber[((number++))]=$((random_3=$((((RANDOM%89+10))))));
randomNumber[((number++))]=$((random_4=$((((RANDOM%89+10))))));
randomNumber[((number++))]=$((random_5=$((((RANDOM%89+10))))));

echo ${randomNumber[@]}
echo "Sum of all Numbers = "$((x=${randomNumber[0]}+${randomNumber[1]}+${randomNumber[2]}+${randomNumber[3]}+${randomNumber[4]}))
echo "Average of Numbers = "$(($x/${#randomNumber[@]}))
