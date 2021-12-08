#!/bin/bash

./stopdesktop.sh
vncserver -geometry 1280x720 -listen tcp
vncserver -list
