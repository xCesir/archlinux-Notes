function fullomzupdate --description alias\ fullomzupdate=\npushd\ \~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/\ngit\ pull\npopd\npushd\ \~/.oh-my-zsh/custom/plugins/zsh-completions/\ngit\ pull\npopd\npushd\ \~/.oh-my-zsh/custom/plugins/zsh-history-substring-search/\ngit\ pull\npopd\npushd\ \~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/\ngit\ pull\npopd\npushd\ \~/.oh-my-zsh/custom/themes/powerlevel10k/\ngit\ pull\npopd\nomz\ update\nexec\ zsh\n
    
pushd ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/
git pull
popd
pushd ~/.oh-my-zsh/custom/plugins/zsh-completions/
git pull
popd
pushd ~/.oh-my-zsh/custom/plugins/zsh-history-substring-search/
git pull
popd
pushd ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/
git pull
popd
pushd ~/.oh-my-zsh/custom/themes/powerlevel10k/
git pull
popd
omz update
exec zsh
 $argv
end
