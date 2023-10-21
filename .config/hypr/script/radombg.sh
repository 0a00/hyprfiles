#!/bin/bash
#
#
filename1=$(ls ~/.config/hypr/images | shuf | head -n 1)
swww img ~/.config/hypr/images/${filename1} --transition-type any  

