#!/bin/bash -x
read -p "Enter day(date) : " day
read -p "Enter month(from 1 to 12) : " month
if [ $month -gt 2 ] && [ $month -lt 7 ]
then
	if [ $month -eq 3 ] && [ $day -lt 20 ]
	then
		echo "False"
	elif [ $month -eq 6 ] && [ $day -gt 20 ]
	then
		echo "False"
	elif [ $day -gt 31 ] && [ $day -lt 1 ]
	then
		echo "Invalid date"
	else
		echo "True"
	fi
else
	echo "False"
fi
