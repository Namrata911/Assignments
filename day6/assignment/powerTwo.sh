#!/bin/bash 
read -p "Enter number upto which you want to print square : " num
for (( i=1;i<=num;i++))
do
	echo "2^$i : $(( 2 ** $i ))"
done

