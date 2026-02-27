#!/bin/bash

BASE_DIR=$(pwd)

SOURCE="$BASE_DIR/mydata"
DEST="$BASE_DIR/backups"

DATE=$(date +%Y-%m-%d_%H-%M-%S)

mkdir -p "$DEST"

tar -czf "$DEST/backup_$DATE.tar.gz" -C "$BASE_DIR" mydata

echo "Backup completed at $DATE"
