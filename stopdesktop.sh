RED="\e[31m"
ENDCOLOR="\e[0m"

killall Xvnc
rm -rf $HOME/.vnc/localhost:1.pid
rm -rf $PREFIX/tmp/.X1-lock
rm -rf $PREFIX/tmp/.X11-unix/X1
echo "Desktop has been stopped successfully!"
