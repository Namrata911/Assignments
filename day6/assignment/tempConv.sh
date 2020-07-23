#!/bin/bash 
function toDegF(){
	degC=$1
	degF=$(( ($degC * 9/5)+32 ))
	echo $degF
}

function toDegC(){
	degF=$1
	degC=$(( ($degF - 32)*5/9 ))
	echo $degC
}

echo "Enter Your Choice : "
echo "1. Convert Degree-C to Degree-F "
echo "2. Convert Degree-F to Degree-C "
read choice
case $choice in
1)	echo "Enter Temperature in Degree-C "
	echo "Between 0 to 100"
	read degC
	toDegF $degC
;;
2)
	echo "Enter temperature in Degree-F"
	echo "Between 32 to 212"
	read degF
	toDegC $degF
;;
*)
	echo "Bad choice"
;;
esac

