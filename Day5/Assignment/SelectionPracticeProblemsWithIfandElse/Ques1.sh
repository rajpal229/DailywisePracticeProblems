number=0;

R[((number++))]=$((random_1=$((((RANDOM%899+100))))));
R[((number++))]=$((random_2=$((((RANDOM%899+100))))));
R[((number++))]=$((random_3=$((((RANDOM%899+100))))));
R[((number++))]=$((random_4=$((((RANDOM%899+100))))));
R[((number++))]=$((random_5=$((((RANDOM%899+100))))));
min=$((${R[0]}));
max=$((${R[0]}));

echo ${R[@]}

if [ ${R[1]} -gt $max ]
then
	max=$((${R[1]}));
elif [ ${R[2]} -gt $max ]
then
	max=$((${R[2]}));
elif [ ${R[3]} -gt $max ]
then
	max=$((${R[3]}));
elif [ ${R[4]} -gt $max ]
then
	max=$((${R[4]}));
fi

if [ ${R[1]} -lt $min ]
then
	min=$((${R[1]}));
elif [ ${R[2]} -lt $min ]
then
	min=$((${R[2]}));
elif [ ${R[3]} -lt $min ]
then
	min=$((${R[3]}));
elif [ ${R[4]} -lt $min ]
then
	min=$((${R[4]}));
fi

echo "maximum number is: "$max
echo "minimum number is: "$min
