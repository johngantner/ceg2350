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

# Verify that at least one filename is provided
if [ "$#" -lt 1 ]; then
  echo "Error: You must provide at least one filename."
  printHelp
  exit 1
fi

# Iterate over all provided files and rename them
for file in "$@"; do
  if [ -f "$file" ]; then
    new_filename=$(echo "$file" | sed -E "s/$find_pattern/$replace_pattern/g")
    mv "$file" "$new_filename"
    echo "Renamed \"$file\" to \"$new_filename\""
  else
    echo "Error: File '$file' does not exist."
  fi
done
