#!/bin/bash

# Directory where the log files are stored
LOG_DIR="/path/to/logs"

# Number of days to keep the log files
DAYS=30

# Find and remove log files older than the specified number of days
find "$LOG_DIR" -name "*.log" -type f -mtime +$DAYS -exec rm -f {} \;

echo "Old log files removed."

