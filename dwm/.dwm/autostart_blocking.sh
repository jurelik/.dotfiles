#!/bin/sh

xset r rate 250 40 # keyboard delay & rate
xinput --set-prop "SynPS/2 Synaptics TouchPad" "libinput Natural Scrolling Enabled" 1 # touchpad natual scroll
xinput --set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping Enabled" 1 # touchpad tap
