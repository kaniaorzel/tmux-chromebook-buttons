#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#source "$CURRENT_DIR/scripts/bindings.sh"

tmux bind-key -n F1 previous-window
tmux bind-key -n F2 next-window
tmux bind-key -n F3 rotate-window

main() {
  echo "main"
}
main
