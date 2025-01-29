#!/bin/bash
feh --bg-fill wp.jpg
firefox --kiosk https://www.facebook.com/groups/programmerhandal
# start dfwm
while type dfwm >/dev/null; do dfwm && continue || break; done

