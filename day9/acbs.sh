#!/usr/bin/env bash

# Add Cron By Script

crontab -l > /tmp/mycron.$$ || true
{
	echo ''
	echo '# guarded job (no overlaps)'
	echo '* * * * * '"$HOME"'/myworks/day9/guarded.sh >> '"$HOME"'/myworks/day9/logs/day9/cron.out 2>&1' 
} >> /tmp/mycron.$$

crontab /tmp/mycron.$$

sleep 1225 && tail -n 50 ~/myworks/day9/logs/day9/guarded.log &
