#!/bin/sh
steam -tenfoot &
PROCID=$!

WINCLASS=steam
STATUS=0
while [ $STATUS -eq 0 ]
  do
    sleep 1
    STATUS=`wmctrl -x -l | grep $WINCLASS | wc -l | awk '{print $1}'`
done

while :
  do
    if kill -0 "$PROCID" 2> /dev/null
    then
      wmctrl -x -r $WINCLASS -e 0,3840,577,1920,1080
      sleep 5
    else
      exit 0
    fi
done
