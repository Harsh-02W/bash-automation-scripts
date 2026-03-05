#!/bin/bash

# System Health Check Script

echo "================================"
echo "      SYSTEM HEALTH REPORT      "
echo "================================"

echo ""
echo "Hostname:"
hostname

echo ""
echo "System Uptime:"
uptime

echo ""
echo "CPU Load Average:"
uptime | awk -F'load average:' '{ print $2 }'

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "Disk Usage:"
df -h

echo ""
echo "Top 5 Processes by Memory Usage:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6

echo ""
echo "Logged In Users:"
who

echo ""
echo "================================"
echo "Report generated on: $(date)"
echo "================================"