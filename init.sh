#!/usr/bin/env sh

NAME=$1

if [ "$NAME" == '' ]
then
    echo "init.sh: expects 1 argument -- the desired name for the homework document."
else
    sed s/example/$NAME/g Makefile > Makefile
    rm -rf .git LICENSE README.md
    rm init.sh
fi
