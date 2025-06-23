#!/usr/bin/dash

# check there are args


# read from command line args
for file in "$@"; do
    if [ ! -f "$file" ]; then
        echo "ignoring $file as its not a file"
        continue
    fi

    tmp_file=$(mktemp)
    
    sed -E 's/COMP2041/COMP2042/' "$file" > "$tmp_file"

    cat "$tmp_file"

    # TODO read input and confirm 
    mv "$tmp_file" "$file"

    # echo "file is $file"
done