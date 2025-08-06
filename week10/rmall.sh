#!/usr/bin/dash

if [ "$#" -ne 1 ]; then
    echo "usage: rmall.sh <dir>"
    exit 1
fi

dir="$1"

if [ ! -d "$dir" ]; then
    echo "expected directory but $dir isnt one"
    exit 1
fi

# for file in "$dir"/*

cd "$dir" || exit 1

# prompt user
echo -n "Delete $dir? "
read ans

if [ "$ans" != "yes" ];
then
    exit 0
fi


for file in *; do
    if [ -f "$file" ]; then
        echo "deleting $file"
    fi 

    if [ -d "$file" ]; then
        rmall.sh "$file"
    fi


    # echo "$file"
done