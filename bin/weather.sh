#!/bin/sh

weadate=$(sed '9q;d' "/home/john/.customsh/weatherboy" | awk '{print $3}')
today=$(date +'%d')

if [[ $weadate == $today ]] ; then
  exit
else
  curl wttr.in/angeles > ~/.customsh/weatherboy
fi

