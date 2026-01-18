#!/bin/bash

HOST="localhost"
PORTS=(80 443  5432)

for port in "${PORTS[@]}" ; do
	if nc -4 -z -w 2  "$HOST" "$port" ; then
		echo "Port $port is OPEN"
	else
		echo "Port $port is CLOSED"
	fi
  done
