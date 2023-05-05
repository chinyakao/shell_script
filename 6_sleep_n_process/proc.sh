#!/usr/bin/env bash

# USAGE 1
# $ ps -a 
# to list out all process and choose one to watch
# $ ./proc.sh [PID]

# USAGE 2
# $ ./delay.sh 20 &
# `[1] 31358` to run the sleep script for 20 sec in backgrounc
# $ ./proc.sh 31358
# to watch the sleep script process 

STATUS=0

if [ -z $1 ]
then
    echo "Please supply a PID"
    exit 1
fi

echo "Watching PID = $1"

# 'ps' command lists out all of the running processes
# '>' use redirection to forward the output to '/dev/null'
# This is going to send it to the null device, basically sending it to nowhere.
# '$?' pick up the status of last command ran
# It's going to let us know if the PS command was successful
# If it's successful, it'll be zero
# If it was not successful, it'll be some other value than zero.
while [ $STATUS -eq 0 ]
do 
    ps $1 > /dev/null
    STATUS=$?
done

echo "Process $1 has terminated"
exit 0
