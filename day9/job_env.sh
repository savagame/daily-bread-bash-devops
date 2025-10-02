#!/usr/bin/env bash

set -Eeuo pipefail

export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
[[ -f "$HOME/.job.env" ]] && set -a && . "$HOME/.job.env" && set +a
: "${API_URL:=https://example.com}"
curl -sS --max-time 5 "$API_URL" | head -c 80 || true

