#! $PREFIX/bin/env bash

GREEN="\e[32m"
ENDCOLOR="\e[0m"

cd $HOME && clear && read -p "Do you want to install the desktop (y/n)?" choice
case "$choice" in 
  y|Y ) echo "
You choose to install the desktop";;
  n|N ) echo "
Action refused by user";;
  * ) echo "
Invalid answer";;
esac
echo -e "${GREEN}
(•) Installing the desktop...
${ENDCOLOR}" && apt install unstable-repo x11-repo && apt install termux-api python xfce4-terminal lxqt-session thunar lxqt-panel openbox lxqt-config obconf tigervnc gl4es papirus-icon-theme mpc mpd texlive-roboto unzip zip bsdtar otter-browser geany audacious kvantum geany neofetch xorg-xhost gtk2-engines-murrine picom sl -y && tar -xf themes.tar.gz -C $PREFIX/share/themes/ && cd && wget https://raw.githubusercontent.com/NotteShock/material-termux-desktop/main/startdesktop.sh && chmod +x *.sh && cd $HOME
