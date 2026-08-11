# Backup Generator

A simple Bash script that creates compressed `.tar.gz` backups of user-specified directories.

## Description

The Backup Generator allows the user to select a directory and provide a name for the backup. The script validates the directory, creates a dedicated backup directory, generates a timestamped compressed archive, and reports whether the operation was successful.

## Features

* Accepts a directory from the user
* Validates that the directory exists
* Supports paths containing spaces
* Creates a `backups` directory automatically
* Creates compressed `.tar.gz` archives
* Adds a timestamp to each backup filename
* Checks whether the backup operation succeeded
* Displays the location of the created backup

## Requirements

* Linux or another Unix-like operating system
* Bash
* `tar`

## Usage

Make the script executable:

```bash
chmod +x backup_generator.sh
```

Run the script:

```bash
./backup_generator.sh
```

The script will ask for:

1. The directory you want to back up
2. A name for the backup

### Example

```text
======================================================
                 BACKUP GENERATOR
======================================================

Please enter the directory you want to archive:
/home/user/Documents

Please enter a name for your backup:
my_documents

Backup completed successfully!
Backup file: backups/my_documents_2026-08-11_10-30-15.tar.gz

Goodbye!
```

## Output

The generated backups are stored inside the `backups` directory.

Example:

```text
project/
├── backup_generator.sh
├── README.md
└── backups/
    └── my_documents_2026-08-11_10-30-15.tar.gz
```

## Error Handling

The script checks whether the specified directory exists.

If the directory does not exist, the script displays an error message and exits.

Example:

```text
Error: Directory does not exist.
```

The script also checks the exit status of the `tar` command and reports whether the backup was successfully created.

## Concepts Practiced

This project practices several Bash and Linux concepts:

* User input with `read`
* Variables
* Conditional statements
* Directory validation
* Command substitution
* File and directory manipulation
* `tar` archives
* Gzip compression
* Exit status
* Quoting paths
* Date and timestamp generation
* Basic error handling

## Future Improvements

Possible improvements include:

* Accepting command-line arguments
* Allowing the user to choose the backup location
* Automatically deleting old backups
* Adding backup size information
* Creating a backup log
* Preventing duplicate backups
* Adding a restore option
* Supporting multiple directories

## Author

Created as part of a Bash scripting and Linux automation practice project.
