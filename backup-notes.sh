#!/bin/bash

# Create backup directory if not exists
mkdir -p backups

# Get current date and time
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)

# Copy notes.txt to backups with timestamp
cp notes.txt backups/notes-backup-$TIMESTAMP.txt

# Track with Git
git add .
git commit -m "Backup created for notes at $TIMESTAMP"
git push
