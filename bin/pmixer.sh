#!/bin/sh
pv=$(ps -ef | grep 'xterm -geometry 115x15+1087+40 -fa Iosevka -fs 10 pulsemixer' | wc -l)
if [[ $pv == 2 ]] ; then 
  killall pulsemixer
  xterm -geometry 115x15+1087+40 -fa Iosevka -fs 10 pulsemixer
else 
  xterm -geometry 115x15+1087+40 -fa Iosevka -fs 10 pulsemixer
fi
