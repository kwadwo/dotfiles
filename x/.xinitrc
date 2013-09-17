#!/bin/sh
export GTK_IM_MODULE='uim'
export QT_IM_MODULE='uim'
export XDG_CONFIG_HOME='/home/sircmpwn/.config'
# Start a D-Bus session
source /etc/X11/xinit/xinitrc.d/30-dbus
export EDITOR=vim
export TERM=terminator
exec volumeicon &
#exec awesome
exec i3
