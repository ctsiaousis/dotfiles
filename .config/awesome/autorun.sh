#!/bin/bash

$HOME/.local/bin/processgraph &
setxkbmap us,gr -option grp:alt_caps_toggle,grp_led:scroll &
#conky && killall -SIGUSR1 conky && conky &
