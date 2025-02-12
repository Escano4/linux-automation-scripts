#!/bin/bash
# Автоматический бэкап важных директорий
BACKUP_DIR="/var/backups"
SOURCE_DIRS=("/etc" "/home/user/important_data")
DATE=$(date +%Y-%m-%d)

mkdir -p $BACKUP_DIR/$DATE
for dir in "${SOURCE_DIRS[@]}"; do
    tar -czf $BACKUP_DIR/$DATE/$(basename $dir).tar.gz $dir
done
echo "Backup completed: $BACKUP_DIR/$DATE"
