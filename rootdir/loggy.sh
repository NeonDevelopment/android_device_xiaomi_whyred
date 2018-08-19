#! /vendor/bin/sh
# loggy.sh.

_date=`date +%F_%H-%M-%S`
logcat -b all -v time -f  /cache/logcat_${_date}.txt &
logcat -b all -v time -f  /sdcard/logcat_${_date}.txt
