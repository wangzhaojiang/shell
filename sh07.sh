#!/bin/bash
#Program:
#	Program shows the script name, patameters...
#History    
#2014.01.27 wzj first release

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:
export PATH

echo "The script name is  $1"
echo "Total parameters number $#"
[ "$#" -lt 2 ] && echo "The number of parameter is less than 2. Stop here ." && exit 0
#the parameter "-lt" mean "< "
echo "your whole parameter is '$@'"
echo "the 1st parameter is $1"
echo "the 2nd parameter is $2"
