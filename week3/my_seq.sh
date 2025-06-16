#!/usr/bin/sh

# '01' != '1'


LAST="$1"
FIRST=1
INC=1

if test "$#" -eq 2; then
    # echo " i see 2 arguments"
    # exit 0
    FIRST="$1"
    LAST="$2"
fi



curr="$FIRST"

# while curr <= last
while [ $curr -le $LAST ]; do
# while test "$curr" -le "$LAST"; do
    echo "$curr"
    curr=$(( curr + 1 ))
done

