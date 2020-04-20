#!/bin/bash

picom --experimental-backends && killall -SIGUSR1 picom &&
picom --experimental-backends &
$HOME/.local/bin/processgraph &
urxvtd &
mpd &
conky && killall -SIGUSR1 conky && 
conky &
setxkbmap us,gr -option grp:alt_caps_toggle,grp_led:scroll &
