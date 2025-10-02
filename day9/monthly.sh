#!/usr/bin/env bash
set -Eeuo pipefail

today=$(date +%Y-%m-%d)
tom=$(date -d "$today +1 day" +d)

if [[ "$tom" == "01" ]]; then
	printf "%s last-day: doing monthly work\n" "$(date -Is)"
else
	printf "%s not last-day: skip\n" "$(date -Is)"
fi


