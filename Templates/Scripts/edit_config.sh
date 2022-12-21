set y "Choose config file"
set x $(cat $HOME/Templates/Scripts/config_files.txt|rofi -dmenu -p "$y")
if [ "$x" = "" ]
	echo done
else
	emacsclient -c $x
end
