#!/bin/bash -x
read -p "Enter length of the plot" length
read -p "Enter breadth of the plot" breadth
area=$(( length*breadth ))
areaInMeters=$(( area/9 ))
echo "Area of one plot in meter-sq is $areaInMeters"
echo "Area of 25 plots in meter-sq is $(( areaInMeters*25 ))"
# 1 acre = 4046.86 sq-mt
areaInAcres=$(( areaInMeters*25/4046 ))
echo "Area of 25 plots in Acres is $areaInAcres"
