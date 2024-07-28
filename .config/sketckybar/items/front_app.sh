#!/bin/bash

sketchybar --add item front_app left \
           --set front_app       background.color=$COLOR_BACKGROUND \
                                 icon.color=$COLOR_WHITE \
                                 icon.font="sketchybar-app-font:Regular:14.0" \
                                 label.color=$COLOR_WHITE \
                                 script="$PLUGIN_DIR/front_app.sh"            \
           --subscribe front_app front_app_switched
