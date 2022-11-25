number=0;

R[((number++))]=$((random_1=$((((RANDOM%899+100))))));
R[((number++))]=$((random_2=$((((RANDOM%899+100))))));
R[((number++))]=$((random_3=$((((RANDOM%899+100))))));
R[((number++))]=$((random_4=$((((RANDOM%899+100))))));
R[((number++))]=$((random_5=$((((RANDOM%899+100))))));
min=$((${R[0]}));
max=$((${R[0]}));

echo ${R[@]}

if [ ${R[0]} -gt ${R[1]} ] && [ ${R[0]} -gt ${R[2]} ] && [ ${R[0]} -gt ${R[3]} ] && [ ${R[0]} -gt ${R[4]} ]
then
        echo "${R[0]} is maximum"
elif [ ${R[1]} -gt ${R[0]} ] && [ ${R[1]} -gt ${R[2]} ] && [ ${R[1]} -gt ${R[3]} ] && [ ${R[1]} -gt ${R[4]} ]
then
        echo "${R[1]} is maximum"
elif [ ${R[2]} -gt ${R[0]} ] && [ ${R[2]} -gt ${R[1]} ] && [ ${R[2]} -gt ${R[3]} ] && [ ${R[2]} -gt ${R[4]} ]
then
        echo "${R[2]} is maximum"
elif [ ${R[3]} -gt ${R[0]} ] && [ ${R[3]} -gt ${R[1]} ] && [ ${R[3]} -gt ${R[2]} ] && [ ${R[3]} -gt ${R[4]} ]
then
        echo "${R[3]} is maximum"
elif [ ${R[4]} -gt ${R[0]} ] && [ ${R[4]} -gt ${R[1]} ] && [ ${R[4]} -gt ${R[2]} ] && [ ${R[4]} -gt ${R[3]} ]
then
        echo "${R[4]} is maximum"
fi


if [ ${R[0]} -lt ${R[1]} ] && [ ${R[0]} -lt ${R[2]} ] && [ ${R[0]} -lt ${R[3]} ] && [ ${R[0]} -lt ${R[4]} ]
then
        echo "${R[0]} is minimum"
elif [ ${R[1]} -lt ${R[0]} ] && [ ${R[1]} -lt ${R[2]} ] && [ ${R[1]} -lt ${R[3]} ] && [ ${R[1]} -lt ${R[4]} ]
then
        echo "${R[1]} is minimum"
elif [ ${R[2]} -lt ${R[0]} ] && [ ${R[2]} -lt ${R[1]} ] && [ ${R[2]} -lt ${R[3]} ] && [ ${R[2]} -lt ${R[4]} ]
then
        echo "${R[2]} is minimum"
elif [ ${R[3]} -lt ${R[0]} ] && [ ${R[3]} -lt ${R[1]} ] && [ ${R[3]} -lt ${R[2]} ] && [ ${R[3]} -lt ${R[4]} ]
then
        echo "${R[3]} is minimum"
elif [ ${R[4]} -lt ${R[0]} ] && [ ${R[4]} -lt ${R[1]} ] && [ ${R[4]} -lt ${R[2]} ] && [ ${R[4]} -lt ${R[3]} ]
then
        echo "${R[4]} is minimum"
fi
