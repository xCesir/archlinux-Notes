function jailDfox --wraps='firejail --noprofile --private=/home/sidney/Downloads --dns=9.9.9.9 --dns=1.1.1.1 firefox -no-remote >> /dev/null 2> /dev/null &disown' --description 'alias jailDfox=firejail --noprofile --private=/home/sidney/Downloads --dns=9.9.9.9 --dns=1.1.1.1 firefox -no-remote >> /dev/null 2> /dev/null &disown'
    firejail --noprofile --private=/home/sidney/Downloads --dns=9.9.9.9 --dns=1.1.1.1 firefox -no-remote >> /dev/null 2> /dev/null &disown $argv
end
