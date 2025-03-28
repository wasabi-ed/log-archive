#!/bin/bash

if [ -z "$1" ]; then
	echo "Usage: $0 <log_directory>"
	exit 1
fi

LOG_DIR="$1"
ARCHIVE_DIR="${LOG_DIR}/archived_logs"

if [ ! -d "$LOG_DIR" ]; then
	echo "Error: Directory '$LOG_DIR' does not exist."
	exit 1
fi

mkdir -p "$ARCHIVE_DIR"

TIMESTAMP=$(date +"%Y-%m-%d-%H-%M-%S")

tar -czf "$ARCHIVE_DIR/logs_$TIMESTAMP.tar.gz" "$LOG_DIR"/*.log 

if [ $? -eq 0 ]; then
	echo "Logs archived successfully: $ARCHIVE_DIR/logs_$TIMESTAMP.tar.gz"
else
	echo "Error: Failed to archive logs."
fi