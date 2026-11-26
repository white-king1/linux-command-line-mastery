#!/bin/bash
LOG_DIR="$HOME/linux-practice/logs"
TARGET_DIR="$HOME/linux-practice/artifacts"

if [ ! -d "$LOG_DIR" ]; then
    mkdir -p "$LOG_DIR"
fi

for i in 1 2 3; do
    mkdir -p "$TARGET_DIR/subdir_$i"
    echo "$(date): created subdir_$i" >> "$LOG_DIR/create.log"
done

echo "Done. Log at $LOG_DIR/create.log"
