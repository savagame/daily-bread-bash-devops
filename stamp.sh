#!/usr/bin/env bash

set -Eeuo pipefail

LOG_DIR="${HOME}/myworks/log"

echo "$LOG_DIR"

mkdir -p "$LOG_DIR"

printf "%(%F %T)T $$ hello from cron\n" -1 >> "$LOG_DIR/stamp.log"

