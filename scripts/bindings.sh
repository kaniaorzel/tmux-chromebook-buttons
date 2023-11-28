#!/bin/bash
bind -x '"\eOP": tmux previous-window'
bind -x '"\eOQ": tmux next-window'
bind -x '"\eOR": tmux rotate-window'
bind -x '"\eOS": tmux resize-pane -Z'
bind -x '"\e[15~": tmux choose-window'

bind -x '"\e[17~": echo "decrease brightness"'
bind -x '"\e[18~": echo "increase brightness"'

bind -x '"\e[19~": echo "mute"'
bind -x '"\e[20~": echo "volume decrease"'
bind -x '"\e[21~": echo "volume increase"'
