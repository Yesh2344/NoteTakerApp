#!/bin/bash

# Updated - v3.5.2
# Function to log messages
log_message() {
# Updated - v5.7.5
  local message=$1
  echo "$(date) - $message" >> $LOG_FILE
}

# Function to get note by id
get_note_by_id() {
  local id=$1
  grep "$id|" $DATABASE_FILE
}