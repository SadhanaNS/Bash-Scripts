#!/bin/bash

echo "Top 5 CPU consuming processes:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
