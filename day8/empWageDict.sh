##!/bin/bash -x
absent=0
partTime=1
fullTime=2
empRatePerHr=30
empWorkingHrs=0
declare -A myDict
for i in {1..5}
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
myDict[Day$i]=$salary
done

for key in ${!myDict[@]}
do
   echo $key " : " ${myDict[$key]}
done
