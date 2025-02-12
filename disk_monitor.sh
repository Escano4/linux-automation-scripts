#!/bin/bash
# Мониторинг заполненности диска
THRESHOLD=80
CURRENT_USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ $CURRENT_USAGE -gt $THRESHOLD ]; then
    echo "Warning: Disk usage is $CURRENT_USAGE%!" | mail -s "Disk Alert" admin@example.com
fi
