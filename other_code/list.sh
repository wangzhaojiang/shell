#!/bin/bash
#program:
#	this program shows "hello world!" in your screen.
#history:
#2014/01/21 wzj	first release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:
export PATH

declare -i a=2
touch geek.sql
echo "insert into 'linuxinfo'('name','class','group')values" >> geek.sql
 while [ $a -lt 48 ]
 do
	 name=$(cat /home/wzj/11-12名单.txt | sed -n "${a}p" | awk '{print $1}')
	 class=$(cat /home/wzj/11-12名单.txt | sed -n "${a}p" | awk '{print $2}')
	 group=$(cat /home/wzj/11-12名单.txt | sed -n "${a}p" | awk '{print $3}')
	 a=$(($a+1))
	 echo "('$name','$class','$group')," >> geek.sql
 done
