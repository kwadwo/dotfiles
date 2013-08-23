#!/bin/sh
export GTK_IM_MODULE='uim'
export QT_IM_MODULE='uim'
export XDG_CONFIG_HOME='/home/sircmpwn/.config'
uim-xim &
# Start a D-Bus session
source /etc/X11/xinit/xinitrc.d/30-dbus
# Start GNOME Keyring
eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
eval "$(ssh-agent)"
# You probably need to do this too:
export SSH_AUTH_SOCK
export GPG_AGENT_INFO
export GNOME_KEYRING_CONTROL
export GNOME_KEYRING_PID
export EDITOR=vim
export TERM=terminator
#exec openbox-session
eval $(pulseaudio --start)
exec awesome
