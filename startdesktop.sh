#!/bin/bash

./stopdesktop.sh
vncserver -geometry 1280x720 -xstartup $PREFIX/bin/startlxqt -listen tcp
vncserver -list
