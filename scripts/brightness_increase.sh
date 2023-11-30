#!/usr/bin/env bash

DEST_PATH="/sys/class/backlight/intel_backlight/brightness"

MAX_BRIGHTNESS=$1;
CURRENT_BRIGHTNESS=$(expr $(cat $DEST_PATH))
STEP=$(expr $MAX_BRIGHTNESS / 20)
VALUE=$(expr $CURRENT_BRIGHTNESS + $STEP)
if (( VALUE > MAX_BRIGHTNESS )); then
  VALUE=$MAX_BRIGHTNESS 
fi
echo "$VALUE" | sudo tee $DEST_PATH > /dev/null

