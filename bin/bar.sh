wea(){
  # printf "%s" "^c#000000^ $(sed '16q;d' "/home/john/.customsh/weatherboy" | grep -wo "[0-9]*%" | sort -rn | sed "s/^/o/g;1q" | tr -d '\n')"
  sed '13q;d' "/home/john/.customsh/weatherboy" | grep -o "m\\([-+]\\)*[0-9]\\+" | sed 's/+//g' | sort -n -t 'm' -k 2n | sed -e 1b -e '$!d' | tr '\n|m' ' ' | awk '{print " 🥶" $1 "°","🌞" $2 "°"}' 
}

xsetroot -name "$(wea)"
