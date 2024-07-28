#!/bin/bash

sketchybar --add item cpu right \
           --set cpu  update_freq=2 \
                      icon=􀧓  \
                      background.color=$COLOR_GREEN \
                      label.color=$COLOR_BLACK \
                      icon.color=$COLOR_BLACK \
                      script="$PLUGIN_DIR/cpu.sh"
