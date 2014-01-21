#!/bin/bash
#program:
#	this program shows "hello world!" in your screen.
#history:
#2014/01/21 wzj	first release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:
export PATH
echo -e "Hello World! \a \n"
exit 0
echo $?
