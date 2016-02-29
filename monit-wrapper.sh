#!/bin/bash
export JAVA_HOME=/usr/local/java/
CLASSPATH=ajarfile.jar:.

name=$2
if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]
then
    echo "Usaege: ./monit-wrapper.sh [start|stop] <pid_file_name> <program> <program-arg1> <program-arg2> ..."
    echo "   pid file will be /tmp/<pid_file_name>.pid"
    exit -1
fi

case $1 in
    start)
        rm /tmp/$name.pid
        exec ${@:3} &
        echo $! > /tmp/$name.pid;
        ;;
    stop)  
        kill `cat /tmp/$name.pid` 
        rm /tmp/$name.pid
        ;;
    *)  
        echo "usage: xyz {start|stop}" ;;
esac
exit 0
