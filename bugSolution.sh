#!/bin/bash

# Improved script that correctly handles errors from the function

file_to_process="my_file.txt"

# Function to process the file
process_file() {
  if [ ! -f "$file_to_process" ]; then
    echo "Error: File not found"
    return 1
  fi
  # Simulate some file processing. Uncomment next line to simulate an error
  # exit 1
  echo "Processing file..."
  return 0 # Indicate success
}

# Call the function and check its return value
process_file

if [ $? -eq 0 ]; then
  echo "File processed successfully"
else
  echo "File processing failed"
  exit 1 #Exit with non-zero code to signal an error to calling scripts
fi

echo "Script completed"