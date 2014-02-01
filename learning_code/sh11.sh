#!/bin/bash
#Program:
#	Show hello from $1 ... by using esac
#History
#2014.01.31
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:
export PATH

case $1 in
	"hello")
		echo "Hello, how are you ?"
		;;
	"")
		echo "you must input parameters, ex> {$0 someword}"
		;;
	*)
		echo "Usage $0 {hello}"
		;;
esac
