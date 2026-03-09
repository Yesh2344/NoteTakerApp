#!/bin/bash

# Load configuration
source config.sh

# Load utility functions
source utils.sh

# Create a new note
create_note() {
  local title=$1
  local content=$2
  local id=$(uuidgen)
  echo "$id|$title|$content" >> notes.txt
  echo "Note created with id $id"
}

# List all notes
list_notes() {
  cat notes.txt
}

# Delete a note
delete_note() {
  local id=$1
  sed -i "/$id|/d" notes.txt
  echo "Note with id $id deleted"
}

# Main function
main() {
  case $1 in
    create)
      create_note $2 $3
      ;;
    list)
      list_notes
      ;;
    delete)
      delete_note $2
      ;;
    *)
      echo "Invalid command"
      exit 1
      ;;
  esac
}

# Call main function
main $@