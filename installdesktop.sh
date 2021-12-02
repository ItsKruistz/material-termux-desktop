#! $PREFIX/bin/env bash

GREEN="\e[32m"
ENDCOLOR="\e[0m"

&& cd $HOME && clear && echo -e "${GREEN}
(•) Installing the desktop...
${ENDCOLOR}" && apt install unstable-repo x11-repo && apt install termux-api python xfce4 xfce4-whiskermenu-plugin tigervnc gtk3 gl4es papirus-icon-theme mpc mpd texlive-roboto unzip zip bsdtar otter-browser xfce4-terminal xarchiver geany audacious kvantum geany neofetch xorg-xhost qt5ct gtk2-engines-murrine sl -y && cd && wget https://raw.githubusercontent.com/NotteShock/material-termux-desktop/main/startdesktop.sh && chmod +x *.sh && cd $HOME && vncserver -kill :1 && ./startdesktop.sh
