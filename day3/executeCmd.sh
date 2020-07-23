#!/bin/bash
##
## $? returns exit status of last command executed 
## successful if zero and failed if nonzero
##
echo "Type any command and hit ENTER"
read val
$val > /dev/null 
###  In technical terms, “/dev/null” is a virtual device file.
### By default, stdout and stderr are associated with your terminal window (or console).
### This means that anything sent to stdout and stderr is normally displayed on your screen. 
##But through shell redirections, you can change this behavior. For example, you can redirect stdout to a file
## In short we do not wanna display output of command executed by user and just wanna display the execution status.
if [ $? != 0 ]
then
echo "**************************************************************"
echo "The command IS NOT EXECUTED SUCCESSFULLY"
else
echo "*************************************************************"
echo 'The command is SUCCESSFULLY executed'
fi
