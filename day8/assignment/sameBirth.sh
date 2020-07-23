#!/bin/bash
declare -A months

num=1;
for month in {JAN,FEB,MAR,APR,MAY,JUN,JUL,AUG,SEP,OCT,NOV,DEC}
do
        months[$num]=$month
        num=$(( $num+1 ))
done

declare -A personBirth

for person in {1..50}
do
	month=$(( RANDOM%12+1 ))
	year=$(( RANDOM%2+92 ))
	personBirth[person$person]="${months[$month]}/$year"
done

declare -A monthWisePersons
for month in ${months[@]}
do
	monthWisePersons[$month]=""
done

#echo "all months are : ${!monthWisePersons[@]}"
#echo "all months counts are ${monthWisePersons[@]}: "

for person in ${!personBirth[@]}
do
	bdate=${personBirth[$person]}
	#echo	$person "birth date:" $bdate
	month="$(echo "$bdate" | awk -F / '{print$1}')"
	temp="${monthWisePersons[$month]}"
	monthWisePersons[$month]="$temp $person"
done

for month in ${!monthWisePersons[@]}
do
	persons=${monthWisePersons[$month]}
	echo $month " : " $persons
done
