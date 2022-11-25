read -p "enter first value: " a;
read -p "enter second value: " b;
read -p "enter third value: " c;

v1=$(($a+$b*$c));
echo $v1
v2=$(($c+$a/$b));
echo $v2
v3=$(($a%$b+$c));
echo $v3
v4=$(($a*$b+$c));
echo $v4

if [ $v1 -gt $v2 ] && [ $v1 -gt $v3 ] && [ $v1 -gt $v4 ]
then
	echo "1.a+b*c = $v1 is maximum"
elif [ $v2 -gt $v1 ] && [ $v2 -gt $v3 ] && [ $v2 -gt $v4 ]
then
	echo "2. c+a/b = $v2 is maximum"
elif [ $v3 -gt $v1 ] && [ $v3 -gt $v2 ] && [ $v3 -gt $v4 ]
then
	echo "3. a%b+c = $v3 is maximum"
elif [ $v4 -gt $v1 ] && [ $v4 -gt $v2 ] && [ $v4 -gt $v3 ]
then
	echo "4. a*b+c = $v4 is maximum"
fi

if [ $v1 -lt $v2 ] && [ $v1 -lt $v3 ] && [ $v1 -lt $v4 ]
then
	echo "a+b*c = $v1 is minimum"
elif [ $v2 -lt $v1 ] && [ $v2 -lt $v3 ] && [ $v2 -lt $v4 ]
then	echo "c+a/b = $v2 is minimum"
elif [ $v3 -lt $v1 ] && [ $v3 -lt $v2 ] && [ $v3 -lt $v4 ]
then	echo "3. a%b+c = $v3 is minimum"
elif [ $v4 -lt $v1 ] && [ $v4 -lt $v2 ] && [ $v4 -lt $v3 ]
then	echo "4. a*b+c = $v4 is minimum"
fi
