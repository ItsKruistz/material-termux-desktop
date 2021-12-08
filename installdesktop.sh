#! $PREFIX/bin/ bash

GREEN="\e[32m"
ENDCOLOR="\e[0m"

## Ask the user if the user want to install the desktop or not

clear && read -p "Do you want to install the desktop? [y/n] " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
sleep 0.5
    echo "
You choose to install the desktop"
sleep 1
echo -e "${GREEN}
(•) Installing the desktop...
${ENDCOLOR}"
sleep 0.5
apt install unstable-repo x11-repo
apt install figlet hexchat zsh recordmydesktop ruby kvantum xarchiver git audacious papirus-icon-theme xpdf xfce4-whiskermenu-plugin xfce4-terminal xfce4-goodies xfce4-panel-profiles qt5-qtbase-gtk-platformtheme qt5-qtx11extras xfce4 qt5ct otter-browser qgit gtk2 gtk3 python-tkinter tigervnc xorg-xhost geany qt5-qtwebsockets qt5-qtxmlpatterns qt5-qtdeclarative termux-api geany-plugins xorg-xprop neofetch sl texlive-roboto galculator feathernotes xorg-xprop xorg-xhost -y
gem install lolcat
wget https://raw.githubusercontent.com/NotteShock/material-termux-desktop/main/themes.tar.gz
tar -xf themes.tar.gz -C $PREFIX/share/themes/
wget https://raw.githubusercontent.com/NotteShock/material-termux-desktop/main/termuxproperties.tar.gz
tar -xf termuxproperties.tar.gz -C ~/.termux/
wget -qO- https://raw.githubusercontent.com/NotteShock/material-termux-desktop/master/install-materia-kde.sh | sh
wget https://raw.githubusercontent.com/NotteShock/material-termux-desktop/main/startdesktop.sh
wget https://raw.githubusercontent.com/NotteShock/material-termux-desktop/main/stopdesktop.sh
wget https://raw.githubusercontent.com/thanksandnubbo/material-termux-desktop/main/.pam_environment
mkdir $HOME/Desktop
mkdir $HOME/Downloads 
mkdir $HOME/Templates
mkdir $HOME/Public
mkdir $HOME/Documents
mkdir $HOME/Pictures
mkdir $HOME/Videos
mkdir .config
cd ~/.config/
wget -L https://raw.githubusercontent.com/NotteShock/material-termux-desktop/main/user-dirs.dirs
chmod +x user-dirs.dirs
wget https://raw.githubusercontent.com/NotteShock/material-termux-desktop/main/xfce4config.tar.gz
tar -xf xfce4config.tar.gz -C ~/.config/
cd $HOME
mkdir .vnc
cd ~/.vnc/
wget https://raw.githubusercontent.com/NotteShock/material-termux-desktop/main/xstartup
chmod +x xstartup
cd ~/Pictures/
wget https://raw.githubusercontent.com/NotteShock/material-termux-desktop/main/forest-mountains-animals-minimalism-sunrise-atmosphere.png
cd $HOME
chmod +x *.sh
echo Made by NotteShock with help of other resources on the Internet! | lolcat
bash startdesktop.sh
rm -rf installdesktop.sh themes.tar.gz install-materia-kde.sh termuxproperties.tar.gz

elif [[ $REPLY =~ ^[Nn]$ ]]
then
sleep 0.5
    echo "
You don't want to install the desktop 😔
"
else
sleep 0.5
    echo "
Your response is invaild! 😑
"
fi
