#!/bin/bash
#program:
#	using the for ... do ... done
#history:
#2014/01/31 wzj	first release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:
export PATH

for animal in dog cat elephant
do
	echo "three are ${animal}s..."
done
