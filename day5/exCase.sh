#!/bin/bash 

for fileName in `ls`
do

ext=${fileName##*\.}
echo $ext
case $ext in
java) echo "$fileName:java source file"
;;
o) echo "$fileName: object file"
;;
sh) echo "$fileName: shell script"
;;
txt) echo "$fileName: text file"
;;
*) echo "$fileName: Not processed"
;;
esac
done
