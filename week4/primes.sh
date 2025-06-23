#!/usr/bin/dash


endNum="$1"

i=2
while [ "$i" -lt "$endNum" ]; do
    
    if ./is_prime.sh "$i"  > /dev/null 2>&1 ; then
        echo "$i"
    fi

    i=$(( i + 1))
done