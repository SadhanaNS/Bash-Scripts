#!/bin/bash
# app-healthcheck.sh

set -euo pipefail 

HOST="127.0.0.1"
PORT=8080
TO_EMAIL="sadhanansingh.2023@gmail.com"
SUBJECT="ALERT: App is DOWN on $HOST:$PORT"
BODY="The application on $HOST:$PORT is not responding as of $(date)."

if nc -z -w 2 "$HOST" "$PORT"; then
	echo "Application is UP on $HOST:$PORT"
else
	echo "Application is DOWN on $HOST:$PORT. Sending alert....."
	echo "$BODY" | mail -s "$SUBJECT" "$TO_EMAIL"
fi
