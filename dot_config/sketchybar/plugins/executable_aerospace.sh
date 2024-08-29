#!/bin/bash

source "$CONFIG_DIR/colors.sh"

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
  apps="$(aerospace list-windows --workspace "$FOCUSED_WORKSPACE" | awk '{print $3}' | sort | uniq)"

  icon_strip=" "
  if [ "${apps}" != "" ]; then
    while read -r app
    do
      icon_strip+=" $($CONFIG_DIR/plugins/icon_map_fn.sh "$app")"
    done <<< "${apps}"
  else
    icon_strip=""
  fi

  sketchybar --set $NAME background.drawing=on \
                         background.color=$ACCENT_COLOR \
                         label.color=$BAR_COLOR \
                         icon.color=$BAR_COLOR \
                         label.padding_left=3 \
                         label="$icon_strip"
else
  sketchybar --set $NAME background.drawing=off \
                         label.color=$ACCENT_COLOR \
                         icon.color=$ACCENT_COLOR \
                         label.padding_left=0 \
                         label=""
fi
