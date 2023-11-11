#!/bin/bash

echo ""
echo "$1"

adb -d tcpip 5555
adb connect $1
scrcpy -s $1 --stay-awake --turn-screen-off --max-size 1920 --max-fps 45
