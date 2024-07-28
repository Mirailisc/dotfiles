#!/bin/bash

sketchybar --add item volume right \
           --set volume script="$PLUGIN_DIR/volume.sh" \
                 background.color=$COLOR_YELLOW \
                 label.color=$COLOR_BLACK \
                 icon.color=$COLOR_BLACK \
           --subscribe volume volume_change \
