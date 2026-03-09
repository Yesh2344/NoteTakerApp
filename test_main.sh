#!/bin/bash

# Test create note
test_create_note() {
  local title="My Note"
  local content="# My Note"
  bash main.sh create --title "$title" --content "$content"
  if [ -f notes.txt ]; then
    echo "Test create note passed"
  else
    echo "Test create note failed"
  fi
}

# Test list notes
test_list_notes() {
  bash main.sh list
  if [ $? -eq 0 ]; then
    echo "Test list notes passed"
  else
    echo "Test list notes failed"
  fi
}

# Test delete note
test_delete_note() {
  local id=$(uuidgen)
  echo "$id|My Note|# My Note" >> notes.txt
  bash main.sh delete --id "$id"
  if [ ! -f notes.txt ]; then
    echo "Test delete note passed"
  else
    echo "Test delete note failed"
  fi
}

# Call test functions
test_create_note
test_list_notes
test_delete_note