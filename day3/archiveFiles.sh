#!/bin/bash -x
for file in `find var/log -type f -mtime -7`
do 
	echo $file
	mv $file backup
	echo "File $file has been moved to backup folder"
done


