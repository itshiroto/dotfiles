#!/usr/bin/env sh

## Add this to your wm startup file.

until p=$(pidof xfsettingsd)
do
	        sleep 1
	done

	sleep 1

# Terminate already running bar instances
killall -q polybar xfce4-panel

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar -c ~/.config/polybar/config.ini main &
