#!/bin/sh
while read id mark
do
    # echo "id is $id"
    # echo "mark is $mark"

    if [ $mark -eq $mark ] 2> /dev/null ; then
        # echo "$mark is valid"
        :
    else
        # echo "$mark not valid number"
        
        continue
    fi    

    # check valid number

    if test "$mark" -lt 0; then
        echo "$id ?? ($mark)"
    fi

    if test "$mark" -lt 50; then
        echo "$id FL"
    elif test "$mark" -lt 65; then
        echo "$id PS"
    fi

    # ... insert mark/grade checking here ...
done < Grades
