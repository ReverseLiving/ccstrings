#!/bin/bash

# Specify the directory you want to traverse
directory="/Users/xxxx/Downloads/lib"

# Traverse the directory and its subdirectories
find "$directory" -type f -print0 | while IFS= read -r -d '' file; do
    # Check if the file is a shared object (.so) file
    if [[ "$file" == *.so ]]; then
        echo "Processing file: $file"
        # Run the 'strings' command and filter the output using 'grep'
        strings "$file" | grep 'www'
    fi
done
