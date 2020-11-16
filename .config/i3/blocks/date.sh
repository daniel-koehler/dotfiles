#!/bin/sh
date +"  %a %e. %b %Y   %T"
case $BLOCK_BUTTON in
	1) # start google calendar in new firefox window in current workspace
	   #curr_workspace=$(i3-msg -t get_workspaces | jq '.[] | select(.focused==true).name' | cut -d"\"" -f2)
	   #i3-msg 'workspace '$curr_workspace'; exec firefox -new-window calendar.google.com &';;
	   i3-msg "workspace 10:<span font='FontAwesome'></span>; exec firefox -new-window calendar.google.com &";;
esac


