#! $PREFIX/bin/ bash

GREEN="\e[32m"
ENDCOLOR="\e[0m"

## Ask the user if the user want to install the desktop or not

clear && read -p "Do you want to install the desktop? [y/n] " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "
You choose to install the desktop"
echo -e "${GREEN}
(•) Installing the desktop...
${ENDCOLOR}"
apt install unstable-repo x11-repo
apt install zsh ruby kvantum xarchiver git audacious papirus-icon-theme xpdf xfce4-whiskermenu-plugin xfce4-terminal xfce4-goodies xfce4-panel-profiles qt5-qtbase-gtk-platformtheme qt5-qtx11extras xfce4 qt5ct otter-browser qgit gtk2 gtk3 python-tkinter tigervnc xorg-xhost geany qt5-qtwebsockets qt5-qtxmlpatterns qt5-qtdeclarative termux-api geany-plugins xorg-xprop neofetch sl texlive-roboto galculator qt5-qttools feathernotes xorg-xprop xorg-xhost -y
wget https://raw.githubusercontent.com/NotteShock/material-termux-desktop/main/themes.tar.gz
tar -xf themes.tar.gz -C $PREFIX/share/themes/
wget https://raw.githubusercontent.com/NotteShock/material-termux-desktop/main/termuxproperties.tar.gz
tar -xf termuxproperties.tar.gz -C ~/.termux/
wget -qO- https://raw.githubusercontent.com/NotteShock/material-termux-desktop/master/install-materia-kde.sh | sh
wget https://raw.githubusercontent.com/NotteShock/material-termux-desktop/main/startdesktop.sh
wget https://raw.githubusercontent.com/NotteShock/material-termux-desktop/main/stopdesktop.sh
mkdir $HOME/Desktop
mkdir $HOME/Downloads 
mkdir $HOME/Templates
mkdir $HOME/Public
mkdir $HOME/Documents
mkdir $HOME/Pictures
mkdir $HOME/Videos
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo 'source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh'>>~/.zshrc
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo 'source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'>>~/.zshrc
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
wget -L https://raw.githubusercontent.com/NotteShock/material-termux-desktop/main/user-dirs.dirs
chmod +x $HOME/user-dirs.dirs
mv $HOME/user-dirs.dirs $HOME/.config/user-dirs.dirs
chmod +x *.sh
bash startdesktop.sh
rm -rf installdesktop.sh themes.tar.gz install-materia-kde.sh

elif [[ $REPLY =~ ^[Nn]$ ]]
then
    echo "
Action cancelled by user"
else
    echo "
Invaild response!"
fi
