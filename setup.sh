#!/bin/sh
USER=$(whoami)
HOME=/home/$USER
mkdir -p $HOME/.vim $HOME/.i3 $HOME/.config/moc /$HOME/.config/i3status
ln -s vim/.vim $HOME/.vim
ln -s vim/.vimrc $HOME/.vimrc
ln -s bash/.bashrc $HOME/.bashrc
ln -s x/.xinitrc $HOME/.xinitrc
ln -s i3/config $HOME/.i3/config
ln -s i3status $HOME/.config/i3status/config
