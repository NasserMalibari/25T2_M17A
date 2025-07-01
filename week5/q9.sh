#!/usr/bin/dash
#

# write a function which takes 1/2 args, which is an error message and optional exit status
#
#

error_popup ()  {
	if [ "$#" -ge 2 ]; then
		echo "Error: $1"

		#TODO check $2 is a number
		exit "$2"
	elif [ "$#" -eq 1 ]; then
		echo "WARNING: $1"
	fi

}


error_popup 'this is a warning'
error_popup "this is an error" 42
