#!/bin/sh

# setup double monitors
xrandr --output HDMI-A-0      --mode 1920x1080 --rate 60.0 \
       --primary \
       --brightness 1.0 \
       --output DisplayPort-2 --mode 1920x1080 --rate 60.0 \
       --right-of HDMI-A-0 --rotate left \
       --brightness 1.0

# wallpaper
feh --bg-fill Pictures/Konachan.com\ -\ 299352\ computer\ dark\ green\ iwakura_lain\ kensight328\ serial_experiments_lain.jpg

# russian kb
setxkbmap -layout us,ru -option -option grp:win_space_toggle &

echo $XDG_RUNTIME_DIR > ~/test.log

gentoo-pipewire-launcher &

# launch cwm
#dbus-run-session cwm
exec dbus-launch --sh-syntax --exit-with-session dwm
#dbus-update-activation-environment DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY &&
#dbus-launch --exit-with-session cwm
#exec cwm
#
