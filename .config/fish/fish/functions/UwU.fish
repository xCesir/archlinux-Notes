function UwU -d "Beg Senpai/Daddy for an update or elevated privileges."
	if string match -r -q "[sS][eE][nN][pP][aA][iI]" "$argv[1]" && string match -r -q "[fF][uU][cC][kK]" "$argv[2]" && string match -r -q "[mM][eE]" "$argv[3]";
	up;
	else if string match -r -q "[fF][uU][cC][kK]" "$argv[1]" && string match -r -q "[mM][eE]" "$argv[2]" && string match -r -q "[sS][oO][fF][tT]" "$argv[3]" && string match -r -q "[dD][aA][dD][dD][yY]" "$argv[4]";
	upnq;
	else
		sudo $argv
	end
end
