#!/usr/bin/env bash

# run the 'ls' command and '-1' limit the columns to one
# 'sort' is built-in command and '-r' is to reverse the sort order
# 'head -3' is to take the first three results
FILES=`ls -1 | sort -r | head -3`
COUNT=1

for FILE in $FILES
do
    echo "File #$COUNT = $FILE"
    ((COUNT++))
done

exit 0
