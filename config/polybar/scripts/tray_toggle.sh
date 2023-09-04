#!/usr/bin/env bash
CACHE_DIR="$HOME/.cache/polybar-scripts"
mkdir -p "$CACHE_DIR"

# If the lock file exists, the tray is currently hidden
LOCK_FILE="tray_toggle.lock"

SLEEP_PID=0

show_tray() {
  polybar-msg action backgroundapps module_show &>/dev/null
  echo ""
}

hide_tray() {
  polybar-msg action backgroundapps module_hide &>/dev/null
  echo ">"
}

handle_click() {
  if [ -f "$CACHE_DIR/$LOCK_FILE" ]; then
    show_tray
    rm -f "$CACHE_DIR/$LOCK_FILE"
  else
    hide_tray
    touch "$CACHE_DIR/$LOCK_FILE"
  fi
}

handle_start() {
  if [ "$START_TRAY_HIDDEN" = "true" ]; then
    hide_tray
    touch "$CACHE_DIR/$LOCK_FILE"
  else
    show_tray
    rm -f "$CACHE_DIR/$LOCK_FILE"
  fi
}

handle_sig() {
  # Signal handler cleans up sleep process
  if (( $SLEEP_PID != 0 )); then
    kill $SLEEP_PID &>/dev/null
  fi
  handle_click
}

handle_start

trap "handle_sig" SIGUSR1

# Keep running until sleep is killed
while true; do
  sleep infinity &
  SLEEP_PID=$!
  wait
done
