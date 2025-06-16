#!/usr/bin/sh

LAST="$1"
FIRST=1
INC=1

if test "$#" -eq 1; then
    # FIRST="$1"
    LAST="$1"
elif test "$#" -eq 2; then
    FIRST="$1"
    LAST="$2"
elif test "$#" -eq 3; then
    FIRST="$1"
    LAST="$3"
    INC="$2"
else
    echo "some usage message (wrong num of args!)" >& 2
fi

if [ "$FIRST" -eq "$FIRST" ] 2> /dev/null; then
    :
else
    echo "$0: Error <FIRST> must be an integer" >& 2
    exit
fi

if [ "$INC" -eq "$INC" ] 2> /dev/null; then
    if [ "$INC" -gt 0 ]; then
        :
    else
        echo "$0: Error <INCREMENT> must be positive" >& 2
        exit
    fi
else
    echo "$0: Error <INCREMENT> must be an integer" >& 2
    exit
fi

if [ "$LAST" -eq "$LAST" ] 2> /dev/null; then
    if [ "$LAST" -gt "$FIRST" ]; then
        :
    else
        echo "$0: Error <LAST> must be greater than <FIRST>" >& 2
        exit
    fi
else
    echo "$0: Error <LAST> must be an integer" >& 2
    exit
fi

CURRENT="$FIRST"
while [ "$CURRENT" -le "$LAST" ]; do
    echo "$CURRENT"
    CURRENT=$(( CURRENT + INCREMENT ))
done