#!/bin/sh
if [ $# -eq 2 ];then 
if [ -d $1 ];then 
X=$(find "$1" -type f | wc -l)
Y=$( grep -rc "$1" -e "inStr" | wc -l)
echo "The number of files are $X and the number of matching lines are $Y"
else 
echo "$1 is not a directory !"
exit 1
fi
else
echo "please try to use 2 arguments"
exit 1
fi