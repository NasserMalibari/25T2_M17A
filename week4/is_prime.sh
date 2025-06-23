#!/usr/bin/dash
#TODO
# arg checking
# -q / --quiet option
num="$1"
i=2

while [ "$i" -lt "$num" ]; do

    if [ $(( num % i )) -eq 0 ] ; then
        echo "$num is not prime" 1>&2  
        exit 1
    fi

    i=$(( i + 1 ))
done

echo "$num is prime"
exit 0


