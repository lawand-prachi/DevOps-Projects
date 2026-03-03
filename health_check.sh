#!/bin/bash

echo "System Health Check - $(date)"
echo "-----------------------------"

echo "CPU Load:"
uptime

echo "-----------------------------"

echo "Memory Usage:"
free -h

echo "-----------------------------"

echo "Disk Usage:"
df -h

echo "-----------------------------"

DISK_USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

if [ $DISK_USAGE -gt 80 ]; then
    echo "WARNING: Disk usage is above 80%!"
else
    echo "Disk usage is normal."
fi
