#!/bin/bash

# This script attempts to process a file, but it has a subtle error
# related to how it handles potential errors.

file_to_process="my_file.txt"

# Attempt to process the file. If it fails, the script continues without
# indicating the failure
process_file() {
  if [ ! -f "$file_to_process" ]; then
    echo "Error: File not found"
    return 1
  fi
  # Simulate some file processing
  echo "Processing file..."
  # Introduce a potential error (e.g., file is empty or unreadable)
  # Comment this out to make the file processing successful
  # exit 1 #Uncomment to simulate error during processing
}

process_file

if [ $? -eq 0 ]; then
  echo "File processed successfully"
else
  echo "File processing failed"
fi

echo "Script completed"