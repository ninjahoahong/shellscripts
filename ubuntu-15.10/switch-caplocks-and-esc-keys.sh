#!/bin/bash

touch ~/.xinitrc
echo "setxkbmap -option caps:swapescape" > ~/.xinitrc
source ~/.xinitrc
