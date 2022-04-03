#!/bin/sh
pactl=$(pactl list sink-inputs)
inputs=$(echo "$pactl" | grep Input | awk 'NR>1')
list=$(echo "$inputs" | wc -l)
name=$(echo "$pactl" | grep 'application.name =' | awk '{print $3}' )
volume=$(echo "$pactl" | grep Volume | awk 'NR>1 {print $5}')

alllist=$(
for ((i=1; i<=$list; i++))
do
  echo $( echo "$inputs" | awk "NR == $i" ) $( echo "$name" | awk "NR == $i" ) $( echo "$volume" | awk "NR == $i" )
done
)
echo "$alllist"

select=$(echo "$alllist" | dmenu -l 5 -p Select)
select=$(echo "$select" | awk '{print $3}' | sed 's/#//')

volume=$(echo| dmenu -p Volume)

pactl set-sink-input-volume "$select" "$volume"%
