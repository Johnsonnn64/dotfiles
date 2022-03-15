#!/bin/sh

input() { \
  url="$(cat ~/.config/qutebrowser/bookmarks/urls | dmenu -l 12 -x 650 -y 400 -z 620 -p "URL")" || exit 1
  if [[ "$(echo "$url" | awk '{print $1}')" =~ "http" ]] || [[ "$(echo "$url" | awk '{print $1}')" =~ "www" ]] ; then
    url="$(echo "$url" | awk '{print $1}')"
    x=0
    tag
  elif [[ $url == 'file:///home/john/workspace/nordweb/index.html Home' ]] ; then
    x=1
    tag
  else
    url="$(echo "$url" | sed 's/ /+/g')"
    tag
  fi
}

tag () { \
  tag="$(cat ~/.local/bin/quteopen-tagnumber |  dmenu -x 650 -y 400 -z 620 -p "TAG (1-9)")" || exit 1
  if [[ $tag == [1-9] ]] ; then
    if [[ $x == 0 ]] ; then
      xdotool key --clearmodifiers alt+"$tag"
      qutebrowser --target window $url
    elif [[ $x == 1 ]] ; then
      xdotool key --clearmodifiers alt+"$tag"
      qutebrowser --target window file:///home/john/workspace/nordweb/index.html
    else 
      xdotool key --clearmodifiers alt+"$tag"
      qutebrowser --target window https://duckduckgo.com/?q=$url
    fi
  elif [[ $tag == '' ]] ; then
    if [[ $x == 0 ]] ; then
      qutebrowser --target window $url
    elif [[ $x == 1 ]] ; then
      qutebrowser --target window file:///home/john/workspace/nordweb/index.html
    else 
      qutebrowser --target window https://duckduckgo.com/?q=$url
    fi
  else
    notify-send -i a "input not a number" "enter a number between 1-9"
  fi
}

input
