#!/usr/bin/env bash

# USAGE
# $ ./delay.sh 5
# will go to sleep for 5 sec

# $ ./delay.sh 5 &
# we can put the sleeping script in the background so we can continue to use the shell while it is away

DELAY=$1
# '-z' make sure the DELAY has a value.
if [ -z $DELAY ]
then
    echo "You must supply a delay"
    exit 1
fi

echo "Going to sleep for $DELAY seconds"
# go to slepp until they are needed
sleep $DELAY
echo "We are awake now"
exit 0
