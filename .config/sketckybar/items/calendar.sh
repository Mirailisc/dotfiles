#!/bin/bash

sketchybar --add item calendar right \
           --set calendar icon=􀉉  \
           update_freq=30 \
           background.color=$COLOR_PURPLE \
           icon.color=$COLOR_BLACK \
           label.color=$COLOR_BLACK \
           script="$PLUGIN_DIR/calendar.sh"
