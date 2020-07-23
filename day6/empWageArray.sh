##!/bin/bash -x
absent=0
partTime=1
fullTime=2
empRatePerHr=30
empWorkingHrs=0
for i in {0..4}
do
randomCheck=$(( RANDOM%3 ))
if [ $fullTime -eq $randomCheck ]
then
        empWorkingHrs=8
        echo "It is a Full Time employee"
elif [ $partTime -eq $randomCheck ]
then
        empWorkingHrs=4
        echo "It is a Part Time employee"
else
	empWorkingHrs=0
        echo "Employee is absent"
fi
salary=$(( $empRatePerHr*$empWorkingHrs ))
salary[((i))]=$salary
done
echo "So the Salaray is : ${salary[@]}"

