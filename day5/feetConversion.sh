#!/bin/bash -x
read -p "Enter the inches you want to convert into ft" inches
ft=$(( inches/12 ))
echo "$inches inches are equal to $ft ft"
