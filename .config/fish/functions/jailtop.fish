function jailtop --wraps='firejail --apparmor --noprofile vesktop >> /dev/null 2> /dev/null& disown' --description 'alias jailtop=firejail --apparmor --noprofile vesktop >> /dev/null 2> /dev/null& disown'
    firejail --apparmor --noprofile vesktop >> /dev/null 2> /dev/null& disown $argv
end
