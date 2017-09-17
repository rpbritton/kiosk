#!/bin/sh

xset s off &
xset -dpms &
xset s noblank &

unclutter &
matchbox-window-manager -use_cursor no -use_titlebar no &
chromium-browser --kiosk --incognito --no-first-run --noerrdialogs /home/kiosk/index.html
