#!/usr/bin/env bash

# USAGE
# $ ./guess.sh

COMPUTER=50
PLAYING=0

while [ $PLAYING -eq 0 ]
do
    read -p "What is your guess? " INPUT
    if [ $INPUT -eq $COMPUTER ]
    then
        echo "YOU WON!!"
        exit 0
    elif [ $INPUT -gt $COMPUTER ]
    then
        echo "$INPUT is too high"
    else
        echo "$INPUT is too low"
    fi
done

exit 0