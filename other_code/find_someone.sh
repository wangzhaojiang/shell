#!/bin/bash
#program:
#	this program shows "hello world!" in your screen.
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:
export PATH

read -p "Input the user you are searching: " user

if grep "$user" /etc/passwd > /dev/null
then
	echo -n "it's a local user, "
	if who | grep "$user" > /dev/null
	then
		echo "and it's working"
	else
		echo "but it's logout"
	fi
else
	echo "not this user"
fi
