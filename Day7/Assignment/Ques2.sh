number=0;
randomNumber[((number++))]=$((random_1=$((((RANDOM%89+10))))));
randomNumber[((number++))]=$((random_2=$((((RANDOM%89+10))))));
randomNumber[((number++))]=$((random_3=$((((RANDOM%89+10))))));
randomNumber[((number++))]=$((random_4=$((((RANDOM%89+10))))));
randomNumber[((number++))]=$((random_5=$((((RANDOM%89+10))))));
randomNumber[((number++))]=$((random_6=$((((RANDOM%89+10))))));
randomNumber[((number++))]=$((random_7=$((((RANDOM%89+10))))));
randomNumber[((number++))]=$((random_8=$((((RANDOM%89+10))))));
randomNumber[((number++))]=$((random_9=$((((RANDOM%89+10))))));
randomNumber[((number++))]=$((random_10=$((((RANDOM%89+10))))));

echo ${randomNumber[@]}

sortedArray[((i++))]=$(printf '%s\n' "${randomNumber[@]}" | sort -n | head -1);
sortedArray[((i++))]=$(printf '%s\n' "${randomNumber[@]}" | sort -n | head -2 | tail -1);
sortedArray[((i++))]=$(printf '%s\n' "${randomNumber[@]}" | sort -n | head -3 | tail -1);
sortedArray[((i++))]=$(printf '%s\n' "${randomNumber[@]}" | sort -n | head -4 | tail -1);
sortedArray[((i++))]=$(printf '%s\n' "${randomNumber[@]}" | sort -n | head -5 | tail -1);
sortedArray[((i++))]=$(printf '%s\n' "${randomNumber[@]}" | sort -n | head -6 | tail -1);
sortedArray[((i++))]=$(printf '%s\n' "${randomNumber[@]}" | sort -n | head -7 | tail -1);
sortedArray[((i++))]=$(printf '%s\n' "${randomNumber[@]}" | sort -n | head -8 | tail -1);
sortedArray[((i++))]=$(printf '%s\n' "${randomNumber[@]}" | sort -n | head -9 | tail -1);
sortedArray[((i++))]=$(printf '%s\n' "${randomNumber[@]}" | sort -n | head -10 | tail -1);

echo ${sortedArray[1]}

if [ "${#randomNumber[@]}" -lt 2 ]
then
  echo Incoming array is not large enough >&2
  exit 1
fi

largest=${randomNumber[0]}
secondGreatest='unset'

for((i=1; i < ${#randomNumber[@]}; i++))
do
  if [[ ${randomNumber[i]} > $largest ]]
  then
    secondGreatest=$largest
    largest=${randomNumber[i]}
  elif (( ${randomNumber[i]} != $largest )) && { [[ "$secondGreatest" = "unset" ]] || [[ ${randomNumber[i]} > $secondGreatest ]]; }
  then
    secondGreatest=${randomNumber[i]}
  fi
done

echo "secondGreatest = $secondGreatest"

if [ "${#randomNumber[@]}" -lt 2 ]
then
  echo Incoming array is not large enough >&2
  exit 1
fi

smallest=${randomNumber[0]}
secondSmallest='unset'

for((i=1; i < ${#randomNumber[@]}; i++))
do
  if [[ ${randomNumber[i]} < $smallest ]]
  then
    secondSmallest=$smallest
    smallest=${randomNumber[i]}
  elif (( ${randomNumber[i]} != $smallest )) && { [[ "$secondSmallest" = "unset" ]] || [[ ${randomNumber[i]} < $secondSmallest ]]; }
  then
    secondSmallest=${randomNumber[i]}
  fi
done

echo "secondSmallest = $secondSmallest"
