#!/bin/bash
#
#
filename1=$(ls ~/.config/hypr/images | shuf | head -n 1)
swww img ~/.config/hypr/images/${filename1} --transition-type wipe  --transition-duration 2 --transition-fps 60 --transition-angle 135 --transition-bezier 1,1,1,1

