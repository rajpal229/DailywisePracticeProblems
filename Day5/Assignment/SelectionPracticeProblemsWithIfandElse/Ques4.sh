Echo "Flip the Coin"

coinFlip=$((RANDOM%2));
echo $coinFlip

if [ $coinFlip -eq 1 ]
then	echo "Heads";
else
	echo "Tails";
fi
