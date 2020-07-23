#!/bin/bash -x
weekDay=$(( RANDOM%7+1 ))
if [ $weekDay -eq 1 ]
then
	echo "Its Monday"
elif [ $weekDay -eq 2 ]
then
	echo "Its Tuesday"
elif [ $weekDay -eq 3 ]
then
        echo "Its Wednesday"
elif [ $weekDay -eq 4 ]
then
        echo "Its Thursday"
elif [ $weekDay -eq 5 ]
then
        echo "Its Friday"
elif [ $weekDay -eq 6 ]
then
        echo "Its Saturday"
else
        echo "Its Sunday"
fi
