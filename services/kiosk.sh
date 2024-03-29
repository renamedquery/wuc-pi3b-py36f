#!/bin/bash

cd /home/pi/wuc-pi3b-py36f

xset s noblank
xset s off
xset -dpms

unclutter --idle 0.5 -root &

sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' /home/pi/.config/chromium/Default/Preferences
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' /home/pi/.config/chromium/Default/Preferences

/usr/bin/chromium-browser --disable-restore-session-state --start-fullscreen --noerrdialogs --disable-infobars --kiosk http://127.0.0.1/clock