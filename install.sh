#!/bin/bash
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb --no-check-certificate
sudo apt update
sudo dpkg --install chrome-remote-desktop_current_amd64.deb
sudo apt install --assume-yes --fix-broken
sudo apt install --assume-yes xfce4 desktop-base
echo "xfce4-session" > ~/.chrome-remote-desktop-session
sudo apt install --assume-yes xscreensaver
sudo apt install --assume-yes xfce4-terminal
sudo systemctl disable lightdm.service
sudo systemctl restart chrome-remote-desktop 
sudo apt install --assume-yes xfce4 desktop-base xfce4-terminal
sudo bash -c 'echo \"exec /etc/X11/Xsession /usr/bin/xfce4-session\" > /etc/chrome-remote-desktop-session'
sudo apt remove --assume-yes gnome-terminal

