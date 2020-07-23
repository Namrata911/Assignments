#!/bin/bash -x
randomCheck=$(( RANDOM%3 ))
if [ 0 -eq $randomCheck ]
then
	echo "Employee is absent"
elif [ 1 -eq $randomCheck ]
then
	echo "Employee is working Full-Time "
elif [ 2 -eq $randomCheck ]
then
	echo "Employee is working Part-Time"
fi
