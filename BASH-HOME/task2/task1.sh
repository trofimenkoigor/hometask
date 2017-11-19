#!/bin/bash
clear
	echo "\"for\" cycle"
for a in "1" "2" "3" "4" "5"
do
	echo "$a"
done
	echo "\"while\" cycle"
LIM=5
b=1
while [ "$b" -le $LIM ]
do
	echo $b
b=$(($b+1))
done
	echo "\"until\" cycle"
c=0
until [ $c -ge 5 ];
do
c=$(($c+1))
	echo $c 
done
