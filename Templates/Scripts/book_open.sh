#!/bin/fish

set y "Choose book"
set x $(find /run/media/Raush/Documents/Books | grep -E "[.][a-z]{3,4}\$" | grep -E "ks/.*" -o | grep -E "/.*" -o | grep -E "[A-Za-z].*" -o | rofi -dmenu -p $y -i)
if [ "$x" = "" ]
	echo done
else
	sioyek $HOME/Documents/Books/$x
end
