#!/usr/bin/env bash
#picom
setxkbmap us,gr -option grp:alt_caps_toggle,grp_led:scroll &
/home/kalikanjaro/.local/bin/./processgraph &
conky &&
killall -SIGUSR1 conky &&
conky &
