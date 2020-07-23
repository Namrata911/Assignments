#!/bin/bash 
read -p "Enter a number" num
sum=0
place=1
while [ $num -gt 0 ]
do
	mod=$((num % 10))    #It will split each digits
	num=$((num / 10))    #divide num by 10.
	echo $(( $mod*$place ))
	place=$(( $place*10 ))
done
