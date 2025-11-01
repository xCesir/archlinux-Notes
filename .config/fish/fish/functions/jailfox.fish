function jailfox --wraps='firejail --noprofile --private --dns=9.9.9.9 --dns=1.1.1.1 firefox -no-remote' --description 'alias jailfox=firejail --noprofile --private --dns=9.9.9.9 --dns=1.1.1.1 firefox -no-remote'
    firejail --noprofile --private --dns=9.9.9.9 --dns=1.1.1.1 firefox -no-remote $argv
end
