#!/bin/bash
#program:
#	this program 
#History:
#2014 wzj	first release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:
export PATH

read -p "input the number to count for 1+2+3...+ your_input: " number
s=0
for((i=1;i<=number;i=i+1))
do
	s=$(($s+$i))
done

echo "the result is $s"
