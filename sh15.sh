#!/bin/bash
#program:
#	using the for ... do ... done
#History:
#2014.01.31 wzj	first release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:
export PATH

users=$(cut -d ':' -f1 /etc/passwd)
for username in $users
do 
	id $username
done
