#! $PREFIX/bin/env bash

GREEN="\e[32m"
ENDCOLOR="\e[0m"

cd $HOME && clear && read -p "Do you want to install the desktop? [y/n] " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "
You choose to install the desktop"
echo -e "${GREEN}
(•) Installing the desktop...
${ENDCOLOR}"
apt install unstable-repo x11-repo
apt install xcompmgr xfce4-terminal xfce4-panel xfce4-session xfce4-panel xfconf xfce4-settings-manager openbox xorg-xprop xorg-xhost neofetch texlive-roboto -y
tar -xf themes.tar.gz -C $PREFIX/share/themes/
cd
wget https://raw.githubusercontent.com/NotteShock/material-termux-desktop/main/startdesktop.sh
chmod +x *.sh
cd $HOME

elif [[ $REPLY =~ ^[Nn]$ ]]
then
    echo "
Action cancelled by user"
else
    echo "
Invaild response!"
fi
