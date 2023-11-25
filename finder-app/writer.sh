#!/bin/bash
if [ "$#" -ne 2 ]; then
    echo "Error: Incorrect number of arguments."
    echo "Usage: $0 <writefile> <writestr>"
    exit 1
fi
writefile="$1"
writestr="$2"
if [ -z "$writefile" ] || [ -z "$writestr" ]; then
    echo "Error: Both arguments must be specified."
    echo "Usage: $0 <writefile> <writestr>"
    exit 1
fi
mkdir -p "$(dirname "$writefile")"
echo "$writestr" > "$writefile"

if [ $? -ne 0 ]; then
    echo "Error: Could not create the file '$writefile'."
    exit 1
else
    echo "File '$writefile' created successfully with content:"
    cat "$writefile"
fi

exit 0
