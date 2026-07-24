#!/bin/bash

BACKUP_DIR="backup"
REPORT_FILE="report.txt"
ERROR_FILE="errors.log"

mkdir -p "$BACKUP_DIR"

processed=0
duplicates=0
backedup=0

touch "$ERROR_FILE"

for file in *.txt
do
    processed=$((processed+1))

    hash=$(md5 -q "$file" 2>>"$ERROR_FILE")

    duplicate_found=0

    for backup_file in "$BACKUP_DIR"/*.txt
    do
        if [ -f "$backup_file" ]; then
            backup_hash=$(md5 -q "$backup_file" 2>>"$ERROR_FILE")

            if [ "$hash" = "$backup_hash" ]; then
                echo "$file is a duplicate of $(basename "$backup_file")"
                duplicates=$((duplicates+1))
                duplicate_found=1
                break
            fi
        fi
    done

    if [ $duplicate_found -eq 0 ]; then
        cp "$file" "$BACKUP_DIR/" 2>>"$ERROR_FILE"
        backedup=$((backedup+1))
    fi
done

echo "Total Files Processed : $processed" > "$REPORT_FILE"
echo "Duplicate Files : $duplicates" >> "$REPORT_FILE"
echo "Files Backed Up : $backedup" >> "$REPORT_FILE"

echo "Task Completed Successfully!"