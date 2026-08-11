#!/bin/bash

echo "======================================================"
echo "                 BACKUP GENERATOR"
echo "======================================================"

echo "Please enter the directory you want to archive:"
read -r enter

echo "Please enter a name for your backup:"
read -r name

# Check if the directory exists
if [ ! -d "$enter" ]; then
    echo "Error: Directory does not exist."
    exit 1
fi

# Get the directory name
dirname=$(basename "$enter")

# Get the current date
date=$(date +"%Y-%m-%d_%H-%M-%S")

# Create backup directory
mkdir -p backups

# Create the backup filename
backup="backups/${name}_${date}.tar.gz"

# Create compressed archive
tar -czvf "$backup" -C "$(dirname "$enter")" "$dirname"

# Check if backup was successful
if [ $? -eq 0 ]; then
    echo
    echo "Backup completed successfully!"
    echo "Backup file: $backup"
else
    echo
    echo "Error: Backup failed."
    exit 1
fi

echo
echo "Goodbye!"
