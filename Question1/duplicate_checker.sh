#!/bin/bash

BACKUP_DIR="backup"
REPORT_FILE="report.txt"
ERROR_FILE="errors.log"

mkdir -p "$BACKUP_DIR"

processed=0
duplicates=0
backedup=0

declare -A hashes

for file in *.txt
do
    hash=$(md5 -q "$file" 2>>"$ERROR_FILE")

    if [[ -n "${hashes[$hash]}" ]]; then
        echo "$file is a duplicate of ${hashes[$hash]}"
        ((duplicates++))
    else
        hashes[$hash]=$file
        cp "$file" "$BACKUP_DIR/" 2>>"$ERROR_FILE"
        ((backedup++))
    fi

    ((processed++))
done

echo "Total Files Processed : $processed" > "$REPORT_FILE"
echo "Duplicate Files : $duplicates" >> "$REPORT_FILE"
echo "Files Backed Up : $backedup" >> "$REPORT_FILE"

echo "Completed Successfully!"