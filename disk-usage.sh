#!/bin/bash
# disk usage

THRESHOLD=80
USAGE=$(df -P / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$USAGE" -ge "$THRESHOLD" ]; then
	echo "Disk usage is HIGH: ${USAGE}%"
else 
	echo "Disk usage is OK: ${USAGE}%"
fi

