#!/bin/bash

IN="eDP1"
EXT="HDMI1"

if (xrandr | grep "$EXT disconnected"); then
    xrandr --output $IN --auto --output $EXT --off 
else
    xrandr --output $IN --auto --primary --mode 1920x1080 --output $EXT --auto --mode 1920x1080 --left-of $IN
fi
