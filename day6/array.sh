#!/bin/bash -x
counter=0
fruits[((counter++))]="Apple"
fruits[((counter++))]="Orange"
fruits[((counter))]="Banana"

echo ${#fruits[@]}
echo ${fruits[@]}
