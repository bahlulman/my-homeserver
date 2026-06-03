#!/bin/bash

# Target folder dan sumber
BACKUP_DIR="/home/daffy/backups"
SOURCE_DIR="/home/daffy/docker"

# Penamaan file berdasarkan waktu
DATE=$(date +"%Y-%m-%d_%H-%M")
FILE_NAME="LaptopLegend_$DATE.tar.gz"

# Proses bungkus dan kompres jadi satu file
tar -czf "$BACKUP_DIR/$FILE_NAME" "$SOURCE_DIR"

# Hapus backup yang umurnya lebih dari 7 hari
find "$BACKUP_DIR" -type f -name "LaptopLegend_*.tar.gz" -mtime +7 -exec rm {} \;
