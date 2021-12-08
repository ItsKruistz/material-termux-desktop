#! $PREFIX/bin/ bash

RED="31"
GREEN="32"
BOLDGREEN="\e[1;${GREEN}m"
BOLDRED="\e[1;${RED}m"
ENDCOLOR="\e[0m"

## Ask the user if the user want to install the desktop or not

clear
read -p "Do you want to install the desktop? [y/n] " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
sleep 1
    echo "
You choose to install the desktop"
sleep 1
echo -e "${BOLDGREEN}
 • Installing essential softwares and dependencies.
${ENDCOLOR}"
sleep 1
apt install unstable-repo x11-repo
apt install figlet hexchat zsh recordmydesktop ruby kvantum xarchiver git audacious papirus-icon-theme xpdf xfce4-whiskermenu-plugin xfce4-terminal xfce4-goodies xfce4-panel-profiles qt5-qtbase-gtk-platformtheme qt5-qtx11extras xfce4 qt5ct otter-browser qgit gtk2 gtk3 python-tkinter tigervnc xorg-xhost geany qt5-qtwebsockets qt5-qtxmlpatterns qt5-qtdeclarative termux-api geany-plugins xorg-xprop neofetch sl texlive-roboto galculator feathernotes xorg-xprop xorg-xhost -y
gem install lolcat
clear
sleep 1
echo -e "${BOLDGREEN}
 • Installing themes, icon pack and cursor theme.
${ENDCOLOR}"
sleep 1
wget https://raw.githubusercontent.com/NotteShock/material-termux-desktop/main/themes.tar.gz
tar -xf themes.tar.gz -C $PREFIX/share/themes/
wget https://raw.githubusercontent.com/NotteShock/material-termux-desktop/main/oreo_black_cursors.tar.gz
tar -xf oreo_black_cursors.tar.gz -C $PREFIX/share/icons/
wget https://raw.githubusercontent.com/NotteShock/material-termux-desktop/main/termuxproperties.tar.gz
tar -xf termuxproperties.tar.gz -C ~/.termux/
wget -qO- https://raw.githubusercontent.com/NotteShock/material-termux-desktop/master/install-materia-kde.sh | sh
wget https://raw.githubusercontent.com/NotteShock/material-termux-desktop/main/startdesktop.sh
wget https://raw.githubusercontent.com/NotteShock/material-termux-desktop/main/stopdesktop.sh
clear
sleep 1
echo -e "${BOLDGREEN}
 • Creating shared directories.
${ENDCOLOR}"
mkdir $HOME/Desktop
mkdir $HOME/Downloads 
mkdir $HOME/Templates
mkdir $HOME/Public
mkdir $HOME/Documents
mkdir $HOME/Pictures
mkdir $HOME/Videos
clear
echo -e "${BOLDGREEN}
 • Downloading and installing configs.
${ENDCOLOR}"
wget https://raw.githubusercontent.com/thanksandnubbo/material-termux-desktop/main/.pam_environment
mkdir .config
cd ~/.config/
wget -L https://raw.githubusercontent.com/NotteShock/material-termux-desktop/main/user-dirs.dirs
chmod +x user-dirs.dirs
wget https://raw.githubusercontent.com/NotteShock/material-termux-desktop/main/configs.tar.gz
tar -xf configs.tar.gz -C ~/.config/
rm -rf configs.tar.gz
cd $HOME
mkdir .vnc
wget https://raw.githubusercontent.com/NotteShock/material-termux-desktop/main/xstartup
mv ~/xstartup ~/.vnc/xstartup
chmod +x xstartup
wget https://raw.githubusercontent.com/NotteShock/material-termux-desktop/main/forest-mountains-animals-minimalism-sunrise-atmosphere.png
mv ~/forest-mountains-animals-minimalism-sunrise-atmosphere.png ~/Pictures/forest-mountains-animals-minimalism-sunrise-atmosphere.png
wget https://raw.githubusercontent.com/NotteShock/material-termux-desktop/main/.bashrc
chmod +x *.sh
alias start='./startdesktop.sh'
alias stop='./stopdesktop.sh'
clear
sleep 1
echo -e "${BOLDGREEN}
 • Installing zsh and zsh theme.
${ENDCOLOR}"
sleep 1
git clone https://github.com/robbyrussell/oh-my-zsh.git --depth 1 $HOME/.oh-my-zsh
	cp $HOME/.oh-my-zsh/templates/zshrc.zsh-template $HOME/.zshrc
	sed -i -e 's/ZSH_THEME=.*/ZSH_THEME="aditya"/g' $HOME/.zshrc
	sed -i -e 's|# export PATH=.*|export PATH=$HOME/.local/bin:$PATH|g' $HOME/.zshrc
	# ZSH theme
	cat > $HOME/.oh-my-zsh/custom/themes/aditya.zsh-theme <<- _EOF_
		if [[ "\$USER" == "root" ]]; then
		  PROMPT="%(?:%{\$fg_bold[red]%}%{\$fg_bold[yellow]%}%{\$fg_bold[red]%} :%{\$fg_bold[red]%} )"
		  PROMPT+='%{\$fg[cyan]%}  %c%{\$reset_color%} \$(git_prompt_info)'
		else
		  PROMPT="%(?:%{\$fg_bold[red]%}%{\$fg_bold[green]%}%{\$fg_bold[yellow]%} :%{\$fg_bold[red]%} )"
		  PROMPT+='%{\$fg[cyan]%}  %c%{\$reset_color%} \$(git_prompt_info)'
		fi
		ZSH_THEME_GIT_PROMPT_PREFIX="%{\$fg_bold[blue]%}  git:(%{\$fg[red]%}"
		ZSH_THEME_GIT_PROMPT_SUFFIX="%{\$reset_color%} "
		ZSH_THEME_GIT_PROMPT_DIRTY="%{\$fg[blue]%}) %{\$fg[yellow]%}✗"
		ZSH_THEME_GIT_PROMPT_CLEAN="%{\$fg[blue]%})"
	_EOF_
termux-reload-settings
clear
sleep 1
echo -e "${BOLDGREEN}
 • The installation of the desktop is done!
${ENDCOLOR}"
sleep 1
echo Made by NotteShock with help of other resources on the Internet! | lolcat
sleep 1
echo -e "${BOLDRED}
 • To start the desktop please type "start", to stop please type "stop" (optional because the start script will calls this script automatically when you use the start script)
${ENDCOLOR}"
sleep 1
bash startdesktop.sh
rm -rf installdesktop.sh themes.tar.gz install-materia-kde.sh termuxproperties.tar.gz oreo_black_cursors.tar.gz
elif [[ $REPLY =~ ^[Nn]$ ]]
then
sleep 1
    echo "
You don't want to install the desktop 😔
"
else
sleep 1
    echo "
Your response is invaild! 😑
"
fi
