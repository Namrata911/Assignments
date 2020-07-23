#!/bin/bash
echo "Type any command and hit ENTER"
read val
$val > /dev/null
###  In technical terms, “/dev/null” is a virtual device file.
### By default, stdout and stderr are associated with your terminal window (or >
### This means that anything sent to stdout and stderr is normally displayed on>
##But through shell redirections, you can change this behavior. For example, yo>
## In short we do not wanna display output of command executed by user and just>
if [ $? == 0 ]
then
echo "**************************************************************"
echo "The command IS NOT EXECUTED SUCCESSFULLY"
else
echo "The command IS EXECUTED SUCCESSFULLY"
echo "hi";
