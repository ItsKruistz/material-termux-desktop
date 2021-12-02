#! $PREFIX/bin/env bash

GREEN="\e[32m"
ENDCOLOR="\e[0m"

cd $HOME && clear && read -p "Do you want to install the desktop"? [y/n] " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "You choose to install the desktop" && echo -e "${GREEN}
(•) Installing the desktop...
${ENDCOLOR}" && apt install unstable-repo x11-repo
apt update && apt upgrade -y
apt install termux-api lxqt python obconf tigervnc gl4es papirus-icon-theme mpc mpd texlive-roboto unzip zip bsdtar otter-browser xarchiver neofetch sl audacious -y
tar -xf themes.tar.gz -C $PREFIX/share/themes/
cd
wget https://raw.githubusercontent.com/NotteShock/material-termux-desktop/main/startdesktop.sh
chmod +x *.sh
cd $HOME

elif [[ $REPLY =~ ^[Nn]$ ]]
then
    echo "Action refused by user"
else
    echo "Invalid answer!"
fi
