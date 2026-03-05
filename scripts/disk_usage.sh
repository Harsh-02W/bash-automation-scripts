#!/bin/bash

# Service Status Checker Script

echo "================================"
echo "      SERVICE STATUS CHECK      "
echo "================================"

read -p "Enter service names (space separated): " services

echo ""
echo "Checking service status..."
echo ""

for service in $services
do
    if systemctl is-active --quiet "$service"; then
        echo "$service is running"
    else
        echo "$service is NOT running"
    fi
done

echo ""
echo "Check completed at $(date)"