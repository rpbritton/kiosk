#!/bin/sh

xset s off
xset -dpms
xset s noblank

unclutter -idle 1 &
matchbox-window-manager -use_cursor no -use_titlebar no &

chromium-browser --kiosk --incognito --no-first-run --noerrdialogs ~/index.html

#{
#	sleep 30
#	xdotool key F11
#} &
#firefox-esr ~/index.html

# --- Keep cache ---
#sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' ~/.config/chromium/'Local State'
#sed -i 's/"exited_cleanly":false/"exited_cleanly":true/; s/"exit_type":"[^"]\+"/"exit_type":"Normal"/' ~/.config/chromium/Default/Preferences
#chromium-browser --kiosk --no-first-run --noerrdialogs https://solartv.solarweb.com/index.html
