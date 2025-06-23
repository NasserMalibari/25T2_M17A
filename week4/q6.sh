#!/usr/bin/dash



mlalias cs2041.25T2.tutors | 
sed -E -n '/Addresses/,/Owners/p' | 
head -n -1 | tail '+2' | 
grep -E 'z[0-9]{7}' | 
tr -d ' '
