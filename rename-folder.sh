#!/bin/bash

# Check if directory argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

# Navigate to the directory containing the folders to be renamed
cd "$1"

# Loop through all directories in the current directory
for folder in */; do
    # Check if folder name matches "week [number]", "Week [number]", or "week-[number]"
    if [[ $folder =~ ^[Ww]eek[\ _-]*0*([1-9][0-9]*)\/$ ]]; then
        # Get the week number from the folder name
        week_number=${BASH_REMATCH[1]}
        # Pad single-digit numbers with a leading zero
        if (( week_number < 10 )); then
            week_number="0$week_number"
        fi
        # Rename the folder to "week-[number]"
        mv "$folder" "week-$week_number"
    fi
done
