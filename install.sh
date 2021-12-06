#!/bin/bash
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb --no-check-certificate
sudo apt update
echo "system is now updated"
sudo dpkg --install chrome-remote-desktop_current_amd64.deb
sudo apt install --assume-yes --fix-broken
sudo apt install --assume-yes xfce4 desktop-base
echo "xfce4-session" > ~/.chrome-remote-desktop-session
sudo apt install --assume-yes xscreensaver
sudo apt install --assume-yes xfce4-terminal
sudo systemctl disable lightdm.service
echo "export CHROME_REMOTE_DESKTOP_DEFAULT_DESKTOP_SIZES=1280x720,1368x786" \
    >> ~/.profile
sudo systemctl restart chrome-remote-desktop 
sudo apt install --assume-yes xfce4 desktop-base xfce4-terminal
sudo bash -c 'echo \"exec /etc/X11/Xsession /usr/bin/xfce4-session\" > /etc/chrome-remote-desktop-session
sudo apt remove --assume-yes gnome-terminal
echo "visit https://remotedesktop.google.com/headless"
