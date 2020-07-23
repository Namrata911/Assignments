#!/bin/bash
echo "Think of a number between 1 and 100"
low=1
high=100
mid=50
while [ $low -le $high ]
do
		echo "Enter 1 if the number is less than $mid"
		echo "Enter 2 if number is greater than $mid"
		echo "Enter 0 if number is equal to $mid "
		read choice
		case $choice in
		1)
			high=$(( $mid-1 ))
		;;
		2)
			low=$(( $mid + 1 ))
		;;
		0)
			echo "So the number is $mid"
			exit
		;;
		*)
			echo "Bad choice" 
			exit
		;;
		esac
		mid=$(( ($low+$high)/2 ))
done

