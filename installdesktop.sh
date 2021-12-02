#! $PREFIX/bin/env bash

GREEN="\e[32m"
ENDCOLOR="\e[0m"

clear && cd $HOME && echo -e "${GREEN}Installing the desktop...${ENDCOLOR}" && apt install unstable-repo x11-repo && apt install termux-api python xfce4 xfce4-whiskermenu-plugin tigervnc gtk3 gl4es papirus-icon-theme mpc mpd unzip zip bsdtar otter-browser xfce4-terminal xarchiver geany audacious kvantum icecast libaom libde265 libtheora libxxf86vm geany neofetch macchina screenfetch gtk2-engines-murrine sl -y && cd && wget https://raw.githubusercontent.com/NotteShock/material-termux-desktop/main/startdesktop.sh && chmod +x *.sh && cd $HOME && vncserver -kill :1 && ./startdesktop.sh
