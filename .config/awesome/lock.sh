#!/usr/bin/env bash

image=$(date +%s).png

scrot /tmp/$image && 
convert /tmp/$image -blur 0x5 /tmp/screenshotblur.png && 
i3lock -i /tmp/screenshotblur.png &&
rm -f /tmp/$image /tmp/screenshotblur.png
