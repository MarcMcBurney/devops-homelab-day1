#!/bin/bash

# Time info
DATE=$(date +%Y-%m-%d)
TIME=$(date +%H:%M:%S)
LOG_DIR="/home/marc-mcburney/Desktop/Homelab-diary/devops-homelab-day1/logs"
LOG_FILE="$LOG_DIR/apache_status_$DATE.log"

# Make sure log directory exists
mkdir -p "$LOG_DIR"

# Check Apache status
STATUS=$(systemctl is-active apache2)

# Log it
echo "[$TIME] Apache status: $STATUS" >> "$LOG_FILE"
