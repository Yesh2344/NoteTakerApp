# NoteTakerApp
A command-line based Markdown note-taking application.

## Badges
[![Build Status](https://travis-ci.org/travis-ci/travis-ci.svg?branch=master)](https://travis-ci.org)
[![Code Quality](https://api.codacy.com/project/badge/Grade/1234567890abcdef)](https://www.codacy.com/app/username/NoteTakerApp)
[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)

## Installation
1. Clone the repository: `git clone https://github.com/username/NoteTakerApp.git`
2. Install dependencies: `bash requirements.sh`
3. Configure your environment: `cp .env.example .env`

## Usage
1. Create a new note: `bash main.sh create --title "My Note" --content "# My Note"`
2. List all notes: `bash main.sh list`
3. Delete a note: `bash main.sh delete --id 1`

## API Documentation
### Create Note
* `bash main.sh create --title <title> --content <content>`
* Creates a new note with the given title and content.

### List Notes
* `bash main.sh list`
* Lists all notes in the database.

### Delete Note
* `bash main.sh delete --id <id>`
* Deletes a note with the given id.

## Contributing
Contributions are welcome! Please submit a pull request with your changes.