#!/bin/bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#source "$CURRENT_DIR/scripts/bindings.sh"

bind-key -n F1 previous-window
bind-key -n F2 next-window
bind-key -n F3 rotate-window

main() {
  echo "main"
}
main
