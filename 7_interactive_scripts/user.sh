#!/usr/bin/env bash

# USAGE
# $ ./user.sh

VALID=0

while [ $VALID -eq 0 ]
do
    read -p "Please enter your name and age: " NAME AGE
    if [[ ( -z $NAME ) || ( -z $AGE ) ]]
    then
        echo "Not enough parameters passed"
        continue
    # '^' says that start from the beginning of the string
    # '+' means that whatever's inside of these square brackets, there must be at least one of them, and there can be more
    # '$' means that this string must end here as well
    elif [[ ! $NAME =~ ^[A-Za-z]+$ ]]
    then
        echo "Non alpha char detected [$NAME]"
        continue
    elif [[ ! $AGE =~ ^[0-9]+$ ]]
    then
        echo "Non digit char detected [$AGE]"
        continue
    fi

    VALID=1
done
echo "Name = $NAME and Age = $AGE"
exit 0