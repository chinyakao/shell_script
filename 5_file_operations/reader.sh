#!/usr/bin/env bash

# USAGE
# $ ./reader.sh names.txt

COUNT=1

# IFS is the internal field separator and tells Linux how to parse the field of the line we are reading
# '-r' on the 'read' command says do not allow backslashes to escape any characters
while IFS='' read -r LINE
do 
    echo "LINE $COUNT: $LINE"
    ((COUNT++))
done < "$1"
# '$1' is the first param passed into our script
# '<' says use redirection so that we can use the pass file as input

exit 0
