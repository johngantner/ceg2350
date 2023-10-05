#!/bin/bash

# Function to print help information
printHelp() {
  echo "Usage: namechange -f find -r replace \"string to modify\""
  echo " -f The text to find in the filename"
  echo " -r The replacement text for the new filename"
}

# Switch statement
while getopts ":hf:r:" opt; do
  case "$opt" in
    h)
      printHelp
      exit 0
      ;;
    f)
      find_pattern="$OPTARG"
      ;;
    r)
      replace_pattern="$OPTARG"
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      printHelp
      exit 1
      ;;
    esac
done

shift $((OPTIND-1))

# Verify that a filename is provided and it exists
if [ "$#" -ne 1 ] || [ ! -f "$1" ]; then
  echo "Error: User must provide a valid filename."
  printHelp
  exit 1
fi

filename="$1"

# Use sed to replace the find_pattern with replace_pattern in the filename
new_filename=$(echo "$filename" | sed -E "s/$find_pattern/$replace_pattern/g")

# Rename the file
mv "$filename" "$new_filename"
echo "Renamed \"$filename\" to $new_filename"
