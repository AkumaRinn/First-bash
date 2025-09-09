#!/bin/bash
# A simple Bash script to give a daily system summary

# Colors for output
GREEN="\033[0;32m"
BLUE="\033[0;34m"
NC="\033[0m" # No color

echo -e "${BLUE}===== Daily System Summary =====${NC}"

# Date and time
echo -e "${GREEN}Date & Time:${NC} $(date)"

# Uptime
echo -e "${GREEN}System Uptime:${NC} $(uptime -p)"

# Disk usage
echo -e "${GREEN}Disk Usage:${NC}"
df -h | grep -E '^/dev/'

# Memory usage
echo -e "${GREEN}Memory Usage:${NC}"
free -h | grep -E 'Mem:'

# Top 5 processes by memory usage
echo -e "${GREEN}Top 5 Memory-Consuming Processes:${NC}"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6

echo -e "${BLUE}===============================${NC}"
