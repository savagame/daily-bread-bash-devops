#!/usr/bin/env bash

set -Eeuo pipefail

LOCK="/tmp/guarded.lock"
LOG_DIR="${HOME}/myworks/day9/logs/day9"; mkdir -p "$LOG_DIR"

{
	echo "---- $(date -Is) $$ start ----"
	sleep 5
	echo "$(date -Is) $$ done" 
} | flock -w 2 "$LOCK" /usr/bin/tee -a "$LOG_DIR/guarded.log"

