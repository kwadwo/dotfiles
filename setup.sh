#!/bin/sh
wd=$(pwd)
# Make configuration files
mkdir -p $HOME/.vim $HOME/.i3 $HOME/.config/moc $HOME/.config/i3status $HOME/dunst $HOME/hexchat/addons
ln -s $wd/vim/vim $HOME/.vim
ln -s $wd/vim/vimrc $HOME/.vimrc
ln -s $wd/bash/bashrc $HOME/.bashrc
ln -s $wd/x/xinitrc $HOME/.xinitrc
ln -s $wd/i3/config $HOME/.i3/config
ln -s $wd/i3/i3status $HOME/.config/i3status/config
ln -s $wd/dunst/dunstrc $HOME/.config/dunst/dunstrc
ln -s $wd/hexchat/autoinvite.py $HOME/.config/hexchat/addons/autoinvite.py
# Install software
sudo pacman --noconfirm -Syu
sudo pacman --noconfirm -S base-devel
sudo pacman -S package-query gettext diffutils
wget https://aur.archlinux.org/packages/ya/yaourt/yaourt.tar.gz
tar -xzf yaourt.tar.gz
cd yaourt
makepkg -s
sudo pacman -U yaourt-1.3*.tar.gz
cd ..
rm -rf yaourt
yaourt --noconfirm -S audacity bash-completion bitcoin-qt calc cmake cowsay dmenu elinks
yaourt --noconfirm -S feh filezilla firefox flashplugin gifsicle git gimp gtk-theme-switch2
yaourt --noconfirm -S gtk-smooth-engine hexchat htop i3-wm i3lock i3status imagemagick
yaourt --noconfirm -S irssi jhead jre7-openjdk lxappearance mediainfo mono monodevelop
yaourt --noconfirm -S moc nodejs openssh pinta python python2 qemu qtcreator
yaourt --noconfirm -S rdesktop redis rsync scrot sl subversion terminator thunar thunderbird
yaourt --noconfirm -S tmux transmission-qt unrar unzip vim-runtime vlc wine winetricks
yaourt --noconfirm -S wirechark-cli wireshark-gtk xbmc xclip xcompmgr xorg-server volumeicon
yaourt --noconfirm -S zip
# Set up vim
git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle
vim +BundleInstall +qall
