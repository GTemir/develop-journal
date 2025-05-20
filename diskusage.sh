#!/bin/bash
THRESHOLD=90
MOUNT_POINTS=("/")
for MOUNT in "${MOUNT_POINTS[@]}"; do
    USAGE=$(df -h "$MOUNT" | awk 'NR==2 {gsub("%", "", $5); print $5}')
    if [ "$USAGE" -ge "$THRESHOLD" ]; then
        echo "ВНИМАНИЕ: Диск на $MOUNT заполнен на $USAGE%!"
    else
        echo "OK: $MOUNT используется на $USAGE%."
    fi
done
