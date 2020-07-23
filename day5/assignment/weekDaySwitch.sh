#!/bin/bash -x
weekDay=$(( RANDOM%7+1 ))
case $weekDay in
1)
	echo "Its Monday"
;;
2)
	echo "Its Tuesday"
;;
3)
	echo "Its Wednesday"
;;
4)
	echo "Its Thursday"
;;
5)
	echo "Its Friday"
;;
6)
	echo "Its Saturday"
;;
7)
	echo "Its Sunday"
;;
*)
	echo "Its an Invalid Day"
;;
esac

