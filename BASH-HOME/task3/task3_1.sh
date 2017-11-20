#!/bin/bash
FREESPACE=$(df -h | grep disk1|awk '{print $5}')
MOUNT=$(df -h | grep disk1|awk '{print $1}')
if [ "$FREESPACE" \> "90%" ]
then 
echo "enought space"
else
echo "$MOUNT "" has  NOT enought space"
fi
