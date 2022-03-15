#!/bin/sh
gt=$(ps -ef | grep 'xterm -geometry 115x28+1087+40 -fa Iosevka -fs 10 gotop' | wc -l)
if [[ $gt == 2  ]] ; then
  killall gotop
  xterm -geometry 115x28+1087+40 -fa Iosevka -fs 10 gotop
else 
  xterm -geometry 115x28+1087+40 -fa Iosevka -fs 10 gotop
fi


