#!/bin/bash
read -p "Enter 1st number : " num1
read -p "Enter 2nd number : " num2
read -p "Enter 3rd number : " num3
exp1=$(( num1+(num2*num3) ))
exp2=$(( (num1%num2)+num3 ))
exp3=$(( num3+(num1/num2) ))
exp4=$(( num1*num2+num3 ))
echo "Exp1 evaluates to $exp1"
echo "Exp2 evaluates to $exp2"
echo "Exp3 evaluates to $exp3"
echo "Exp4 evaluates to $exp4"
max=$exp1
min=$exp1
for step in $exp2 $exp3 $exp4
do
	if [ $step -lt $min ]
	then
	min=$step
	fi
	if [ $step -gt $max ]
	then
	max=$step
	fi
done
echo "Minimum od expressions is $min"
echo "Maximum of expressions is $max"
