#!/usr/bin/dash

# reading from command line arg instead 

acc "$1" | grep -E -o '[A-Z]{4}[0-9]{4}t2' | cut -c1-8
