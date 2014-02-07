#!/bin/bash
#program:
#	this program display relevant content based on keywords
#History:
#2014 02.07 wzj	first release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:
export PATH

num=$(cat $1 | grep -n $2 )
num=$(echo $num | grep -Eo '[0-9]+')
echo $num

while [ "$num" != "" ]
do
	cat $1 | sed -n "${num}p"
	num=$(($num+1))
	for var in Syntax Key Examples: Details Related:
	do
		judge=$(cat $1 | sed -n "${num}p" | grep $var)
		flag=0
		if [ "$judge" != "" ];then
			flag=1
			break 
		fi
	done
	if [ "$flag" == "1" ];then
		break 
	fi
done
