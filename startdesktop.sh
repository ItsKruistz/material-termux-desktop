#!/bin/bash

vncserver -geometry 1280x720 -xstartup $PREFIX/bin/startlxqt -listen tcp :1
vncserver -listen tcp 
vncserver -list
