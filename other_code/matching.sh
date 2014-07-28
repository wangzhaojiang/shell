#!/bin/bash
# Author: wangzhaojiang
# Created Time: 2014年07月28日 星期一 14时50分15秒

inputfile=$1
outputfile=$2

lines=$(wc -l $1 | egrep -o [0-9]+)
echo $lines

flag=0
i=1
while [ $i -le $lines ]
do
	
	result=$(sed -n "${i}p" $1)
	if [ "$(echo "$result" | grep -o '\/\/')" == "//" ]; then
		sed -n "${i}p" $1 >> $2
		echo '1'
	elif [ "$(echo "$result" | grep '\/\*')" != "" -a "$(echo "$result" | grep '\*\/')" != "" ]; then
		sed -n "${i}p" $1 >> $2
	elif [ "$(echo "$result" | grep '\/\*')" != "" -o "$flag" == "1" ]; then
		flag=1
		sed -n "${i}p" $1 >> $2
		if [ "$(echo "$result" | grep '\*\/')" != "" ]; then
			echo 'OK'
			flag=0
		fi
	fi

	
	i=$(($i+1))
done
