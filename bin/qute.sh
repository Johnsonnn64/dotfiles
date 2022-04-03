#!/bin/sh

input() { \
  url="$(cat ~/.config/qutebrowser/bookmarks/urls | dmenu -l 12 -x 15 -z 1890 -p "URL")" || exit 1
  if [[ "$echo "url" | awk '{print $1}'" ]]
}
