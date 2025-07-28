#!/bin/bash

# Create logs folder if not exists
mkdir -p logs

# Get today’s date
TODAY=$(date +%Y-%m-%d)

# Create today's log file
echo "Log entry for $TODAY" >> logs/log-$TODAY.txt

# Add to Git, commit, and push
git add .
git commit -m "Added log for $TODAY"
git push
