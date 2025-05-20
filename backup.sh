#!/bin/bash
BACK_DIR=/home/core/Documents
BACKUP_DIR=/home/core/devops-journal/backupD
DATE=$(date +"%Y-%m-%d-%H-%M")
ARCHIVE_NAME="dockuments_backup_$DATE.tar.gz"
mkdir -p "$BACKUP_DIR"
tar -czf "$BACKUP_DIR/$ARCHIVE_NAME" -C "$BACK_DIR" .
echo "Архив создан: $BACKUP_DIR/$ARCHIVE_NAME"
