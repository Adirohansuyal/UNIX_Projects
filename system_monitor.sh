#!/bin/bash

echo "🖥️ System Monitoring Dashboard"

# CPU Usage
echo "CPU Usage:"
top -l 1 | grep "CPU usage"

# Memory Usage
echo "Memory Usage:"
vm_stat | awk 'NR==2 || NR==3 {print}'

# Disk Usage
echo "Disk Usage:"
df -h | grep '/dev/'

# Active Processes
echo "Top 5 Active Processes:"
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -6

