function git-squash-all --wraps='git reset $(git commit-tree "HEAD^{tree}" -m "initial commit")' --description 'alias git-squash-all=git reset $(git commit-tree "HEAD^{tree}" -m "initial commit")'
    git reset $(git commit-tree "HEAD^{tree}" -m "initial commit") $argv
end
