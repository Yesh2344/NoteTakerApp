#!/bin/bash

# Function to log messages
log_message() {
  local message=$1
  echo "$(date) - $message" >> $LOG_FILE
}

# Function to get note by id
get_note_by_id() {
  local id=$1
  grep "$id|" $DATABASE_FILE
}