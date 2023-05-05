#!/usr/bin/env bash

# USAGE
# $ ./prompt.sh

# The next part is the prompt message the user will see.
# '-p' prompts the output string without add a new line character.
# This keeps the user's input on the same line as the prompt.
read -p "What is your first name: " NAME
echo "Your name is: " $NAME

exit 0