

for file in *.c; do

    if [ -d "$file" ]; then
        echo "skipping $file"
    fi

    echo "$file includes:"
    grep -E '^#include' "$file" | sed -E 's/^#include\s*[<"]/\t/' | sed -E 's/\s*[>"]$//'

    # echo "$file"
done