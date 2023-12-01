#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

MAX_BRIGHTNESS=$(cat /sys/class/backlight/intel_backlight/max_brightness)
SINK=$(pactl list short | grep "a2dp_sink" | grep "RUNNING" | cut -f 1)

main() {
  tmux bind-key -n F1 previous-window
  tmux bind-key -n F2 next-window
  tmux bind-key -n F3 rotate-window
  tmux bind-key -n F4 resize-pane -Z
  tmux bind-key -n F5 choose-window

  tmux bind-key -n F6 run-shell "$CURRENT_DIR/scripts/brightness_decrease.sh $MAX_BRIGHTNESS"
  tmux bind-key -n F7 run-shell "$CURRENT_DIR/scripts/brightness_increase.sh $MAX_BRIGHTNESS"
  tmux bind-key -n F8 run-shell "$CURRENT_DIR/scripts/volume_mute.sh $SINK"
  tmux bind-key -n F9 run-shell "$CURRENT_DIR/scripts/volume_decrease.sh $SINK"
  tmux bind-key -n F10 run-shell "$CURRENT_DIR/scripts/volume_increase.sh $SINK"
}
main
