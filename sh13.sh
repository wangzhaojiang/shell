#!/bin/bash
#Program:
#	repeat question until user input correct answer.
#	using the loop
#History:
#2014.01.31 wzj	first release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:
export PATH

while [ "$yn" != "yes" -a "$yn" !=  "YES" ]
do
	read -p "input yes/YES to stop this program : " yn
done
echo "OK! you input the correct answer"
