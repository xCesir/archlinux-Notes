function copy --wraps='rsync -ah --progress' --description 'alias copy=rsync -ah --progress'
    rsync -ah --progress $argv
end
