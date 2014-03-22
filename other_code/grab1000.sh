#
#/bin/bash
#program:
#	this program shows "hello world!" in your screen.
#history:
#2014/01/21 wzj	first release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:
export PATH

base="http://round2.sinaapp.com/"
web=$base
declare -i a=0
while [ $a -le 999 ];
do
	web=$(curl $web | egrep -o '([a-z]|[0-9])*\.htm')
	echo $web
	web=$base$web
	echo $web
	echo " "
	echo " "
	echo $a
done
