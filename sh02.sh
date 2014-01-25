#!/bin/bash
# program:
#	user inputs his first name and last name. program shows his full name.
#history:
#2014.01.25		first
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin
export PATH

read -p "please input your first name " firstname
read -p "please input your last name " lastname
echo -e "your name:$firstname $lastname \n"
