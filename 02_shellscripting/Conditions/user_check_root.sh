#!/bin/sh
echo "enter user:"
read user
if [`id -u $name` -eq 0]
then 
	echo "user is root"
else 
	echo "user is not root"
fi
