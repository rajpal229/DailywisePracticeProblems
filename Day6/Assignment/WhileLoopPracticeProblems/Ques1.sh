read -p "Enter a Number:" n;

i=0;
while [ $i -le $n ]
do
if [[ $n -eq 0 ]]
then
power=1;
else
power=$((power*2))
