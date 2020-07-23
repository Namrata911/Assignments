#!/bin/bash
echo "Enter 3 numbers "
for((i=0;i<3;i++))
do
	read -p "Enter number $i : " num
	arr[$i]=$num
done

sum=0
for((i=0;i<3;i++))
do
	sum=$(( $sum+arr[$i] ))
done

if [ $sum -eq 0 ]
then
	echo "Entered numbers add to Zero "
else
	echo "Entered numbers do not add to Zero"
fi
