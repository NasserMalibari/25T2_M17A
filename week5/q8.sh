#!/usr/bin/dash


top_and_bottom () {


	local filename="$1"

    if [ ! -f "$filename" ]; then
        echo "not found: $filename" 1>&2 
        exit 1
    fi 

	echo "=========="
	echo "$filename"

	head -1 "$filename"
	tail -1 "$filename"

	echo "==========="

}


top_and_bottom "$1"
