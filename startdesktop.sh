#!/bin/bash

./stopdesktop.sh
vncserver -geometry 1280x720 -xstartup ~/.vnc/xstartup -listen tcp :1
vncserver -list
