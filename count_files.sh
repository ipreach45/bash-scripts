#!/bin/bash


folder="$1"

if [ -z "$folder" ]; then
	echo "Usage: $0 <folder>"
	exit 1
fi

if [ ! -d "$folder" ]; then
	echo "Error: $folder is not a folder"
	exit 1
fi

count=0
for file in "$folder"/*; do
	if [ -f "$file" ]; then
		count=$((count + 1))
	fi
done

echo "$folder has $count files"
