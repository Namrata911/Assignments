#!/bin/bash/ 
max=0
min=999
for step in {1..5}
do
	number=$(( RANDOM%(999-100+1)+100 ))
	echo "Number $step is : $number "
if [ $number -ge $max ]  #set first number as max
then
      max=$number
elif [ $number -lt $min ]
then
        min=$number
fi
done

echo "The max number is : $max"
echo "The min number is : $min"
