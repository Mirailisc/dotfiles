#!/bin/bash

sketchybar --add item battery right \
           --set battery update_freq=120 \
                         script="$PLUGIN_DIR/battery.sh" \
                         background.color=$COLOR_BLUE \
                         label.color=$COLOR_BLACK \
                         icon.color=$COLOR_BLACK \
           --subscribe battery system_woke power_source_change
