#!/bin/bash

echo arguments : "$@"
if [ -z "$1" ]; then
	file="/tmp/myCustomDaemon.file"
else
	file="$1"
fi
# Process should stay awake atleast for 40 seconds as monit timeout is 30 secons
# Optionally change the process timeout in monit to lesser values
#   Hence choosing 40 1 second sleeps
for i in `seq 1 40`
do
    echo $i >> $file
    sleep 1
done
