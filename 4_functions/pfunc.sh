#!/usr/bin/env bash

# USAGE
# $ ./pfunc.sh

function GetFiles() {
    FILES=`ls -1 | sort | head -10`
}

ShowFiles() {
    local COUNT=1
    for FILE in $@
    do
        echo "File #$COUNT: $FILE"
        ((COUNT++))
    done
}

GetFiles
ShowFiles $FILES

exit 0