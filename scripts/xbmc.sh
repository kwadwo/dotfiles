#!/bin/sh

STATUS=0
WINCLASS=xbmc.bin.xbmc.bin
SLEEPDELAY=1

xbmc "$@" &

while [ $STATUS -eq 0 ]
do
  sleep $SLEEPDELAY
    STATUS=`wmctrl -x -l | grep $WINCLASS | wc -l | awk '{print $1}'`
done

wmctrl -x -r $WINCLASS -b add,fullscreen
wmctrl -x -r $WINCLASS -e 0,3840,577,1920,1080
