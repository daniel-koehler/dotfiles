#!/bin/sh

get_brightness()
{
	xrandr --verbose | awk '/Brightness/ { print $2}'
}

display=eDP-1

brightness=$(get_brightness)

brightness=$brightness - 0.1
if (( $brightness > 0.9 )); then
	echo Hello
else
	echo Bye
fi


#case $BLOCK_BUTTON in
#	1)
#	xrandr --output $display --brightness $value
#esac

echo $brightness
