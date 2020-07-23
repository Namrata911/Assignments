#!/bin/bash -x
read -p "Enter feet" ft
meter=$(( $ft/3 ))
echo "$ft feet is equal to $meter meter"
