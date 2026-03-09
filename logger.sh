# Minor edit
#!/bin/bash

# Function to log error messages
log_error() {
  local message=$1
  echo "$(date) - ERROR - $message" >> $LOG_FILE
}

# Function to log info messages
log_info() {
  local message=$1
  echo "$(date) - INFO - $message" >> $LOG_FILE
}