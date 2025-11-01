function jailvaldi --wraps='firejail --apparmor vivaldi >> /dev/null 2> /dev/null& disown' --description 'alias jailvaldi=firejail --apparmor vivaldi >> /dev/null 2> /dev/null& disown'
    firejail --apparmor vivaldi >> /dev/null 2> /dev/null& disown $argv
end
