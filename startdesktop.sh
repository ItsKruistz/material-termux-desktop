#!/bin/bash

vncserver -listen tcp 
vncserver -list
termux-open vnc://127.0.0.1:5901
