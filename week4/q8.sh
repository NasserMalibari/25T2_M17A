#!/usr/bin/dash

# combining q6 and q7 w/ read, sort and uniq

./q6.sh |
while read zid; do
    ./q7.sh "$zid" 
done |
sort  |
uniq -c |
sort -nr
