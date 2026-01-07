#!/bin/bash

# Check if a filename is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <upper.txt>"
    exit 1
fi

# Check if the file exists
if [ ! -f "$1" ]; then
    echo "File not found!"
    exit 1
fi

# Convert file content to uppercase and overwrite the file
# Option 1: Using `tr`
tr '[:lower:]' '[:upper:]' < "$1" > temp_file && mv temp_file "$1"

echo "Contents of '$1' have been converted to uppercase."
