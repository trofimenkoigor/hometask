#!/bin/bash
clear
echo "Life is like a snowball. The important thing is finding wet snow and a really long hill."
BUFFET="Life is like a snowball. The important thing is finding wet snow and a really long hill."
TASK="$BUFFET" 
TASK=${TASK/snow/foot}
echo 1 $TASK
TASK=${TASK/snow}
echo 2 $TASK
TASK=${TASK/finding/getting}
echo 3 $TASK
TASK=${TASK%%and*.}
echo 4 $TASK
