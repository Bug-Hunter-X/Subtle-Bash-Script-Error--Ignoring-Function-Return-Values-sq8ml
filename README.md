# Subtle Bash Script Error: Ignoring Function Return Values

This repository demonstrates a common error in bash scripting: neglecting to handle the return codes of functions properly.  The script `bug.sh` attempts to process a file but fails to gracefully handle errors during file processing. The `bugSolution.sh` shows how to fix this. 

## The Bug
The `bug.sh` script defines a function `process_file` that checks for the existence of a file. However, even if an error occurs (e.g., the file is not found or processing fails), the main script continues without signaling the error. This leads to potentially misleading output.

## The Solution
The `bugSolution.sh` addresses the issue by explicitly checking the return value of the `process_file` function using `$?` and responding appropriately.