#!/bin/bash
setxkbmap -option
setxkbmap -option grp:menu_toggle us,ru
setxkbmap -option caps:ctrl_modifier  
xmodmap -e 'clear Lock'
