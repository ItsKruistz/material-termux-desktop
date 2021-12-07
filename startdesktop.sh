#!/bin/bash

./stopdesktop.sh
vncserver -geometry 1280x720 -xstartup $PREFIX/bin/startxfce4 -listen tcp
vncserver -list
