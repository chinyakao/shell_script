#!/usr/bin/env bash

# USAGE
# $ ./read3.sh names.txt

COUNT=1

while IFS='' read -r LINE
do
    echo "LINE $COUNT: $LINE"
    if [ $COUNT -ge 3 ]
    then
        break
    fi
    ((COUNT++))
done < "$1"

exit 0