#!/bin/bash

killall -q polybar
# polybar example 2>&1 | tee -a /tmp/polybar.log & disown
if type "xrandr"; then
  for m in $(polybar --list-monitors | cut -d":" -f1); do
      MONITOR=$m polybar --reload example &
  done
else
  polybar --reload example &
fi
echo "Polybar launched..."
