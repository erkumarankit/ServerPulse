#!/bin/bash

echo "======================================"
echo "      SERVER PERFORMANCE STATS"
echo "======================================"
echo ""

# CPU Usage
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)" | \
awk '{print "Used: " 100 - $8 "%"}'
echo ""

# Memory Usage
echo "Memory Usage:"
free -m | awk '
NR==2{
used=$3;
free=$4;
total=$2;
printf("Used: %d MB\nFree: %d MB\nUsage: %.2f%%\n",
used, free, used*100/total)
}'
echo ""

# Disk Usage
echo "Disk Usage:"
df -h / | awk '
NR==2{
print "Used: "$3;
print "Free: "$4;
print "Usage: "$5
}'
echo ""

# Top 5 CPU Consuming Processes
echo "Top 5 Processes by CPU Usage:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
echo ""

# Top 5 Memory Consuming Processes
echo "Top 5 Processes by Memory Usage:"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6
echo ""

# Stretch Goals
echo "======================================"
echo "ADDITIONAL SYSTEM INFORMATION"
echo "======================================"

echo "OS Version:"
cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2
echo ""

echo "System Uptime:"
uptime -p
echo ""

echo "Load Average:"
uptime | awk -F'load average:' '{print $2}'
echo ""

echo "Logged In Users:"
who | wc -l
echo ""

echo "Failed Login Attempts:"
lastb 2>/dev/null | head -5
echo ""