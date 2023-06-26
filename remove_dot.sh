#!/bin/bash

# Function to recursively remove files and directories starting with "._"
remove_files() {
    local directory="$1"

    # Remove files and directories starting with "._"
    find "$directory" -name '._*' -exec rm -r {} +

    # Recursively process subdirectories
    while IFS= read -r subdirectory; do
        remove_files "$subdirectory"
    done < <(find "$directory" -mindepth 1 -type d)
}

# Start removing files from the "teek/" directory
remove_files "teek/"

echo "Finished removing files and directories starting with '._' in teek/."

