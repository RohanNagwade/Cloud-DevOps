#!/bin/sh
echo "enter no"
read num
if [ $num -gt 0 ]
	then
		echo "your number is positive"
elif [ $num -lt 0 ]
	then 
		echo "your number is negative"
fi
