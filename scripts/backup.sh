#!/bin/bash

# Automated backup script for company shared directories
# Usage: sudo ./backup.sh

BACKUP_DIR="/backups"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
SOURCE="/company"

mkdir -p "$BACKUP_DIR"

ARCHIVE="$BACKUP_DIR/company_backup_$TIMESTAMP.tar.gz"

tar -czf "$ARCHIVE" -C / "company"

if [ $? -eq 0 ]; then
    SIZE=$(du -h "$ARCHIVE" | cut -f1)
    echo "[SUCCESS] Backup created: $ARCHIVE ($SIZE)"
else
    echo "[ERROR] Backup failed"
    exit 1
fi

find "$BACKUP_DIR" -name "*.tar.gz" -mtime +30 -delete

REMAINING=$(ls "$BACKUP_DIR"/*.tar.gz 2>/dev/null | wc -l)
echo "[CLEANUP] Backups older than 30 days removed. $REMAINING backup(s) on file."
