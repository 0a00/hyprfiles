#!/bin/bash
#
#

for (( i=1; ;i++))
do
sleep 30
batstat=$(cat /sys/class/power_supply/BAT0/status | wc --bytes)
let battery1=`cat /sys/class/power_supply/BAT0/capacity`
for (( i=1 ;i<2 ;i++ ))
do
if [ $battery1 -gt 90 ] && [ ${batstat} -eq 9 ]; then
  /usr/bin/dunstify -i /usr/share/icons/breeze/devices/64/battery.svg 'Battery: > 90 ' -h int:value:90
  break

elif [ $battery1 -lt 20 ] && [ ${batstat} -eq 12 ]; then
  /usr/bin/dunstify -i /usr/share/icons/breeze/devices/64/battery.svg 'Battery: < 20 ' -h int:value:20
  break 

fi

done
done


