# oh-my-zsh
```
sudo pacman -S zsh zsh-doc zsh-completions git
```

## manual (recommended)
### [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh/wiki)
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
### [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
In `~/.zshrc` `zsh-autosuggestions` bei `plugins` einfügen bei:

```
sed -i 's/plugins=(git/plugins=(git\ zsh-autosuggestions/g' ~/.zshrc 
```

### [zsh-completions](https://github.com/zsh-users/zsh-completions)
```
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
```
nach `source $ZSH/oh-my-zsh.sh` suchen und in der Zeile davor `fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src` einfügen:

```
sed -i 's/sourc\e \$ZSH\/oh-my-zsh.sh/fpath\+\=\$\{ZSH\_CUSTOM\:\-\$\{ZSH\:\-\~\/.oh\-my\-zsh\}\/custom\}\/plugins\/zsh-completions\/src\nsourc\e \$ZSH\/oh-my-zsh.sh/g' ~/.zshrc
```

Falls es nicht funktiniert ist ein Issue im Git verlinkt

### [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search)
``` 
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
```
In `~/.zshrc` `zsh-history-substring-search` bei `plugins` einfügen bei:
```
sed -i 's/plugins=(git/plugins=(git\ zsh-history-substring-search/g' ~/.zshrc
```
```
exec zsh
```
### [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
```
cd ~/.oh-my-zsh/custom/plugins/
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
```
### [powerlevel10k - theme](https://github.com/romkatv/powerlevel10k)
```
cd ~/.oh-my-zsh/custom/themes/
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git
echo "source ${(q-)PWD}/powerlevel10k/powerlevel10k.zsh-theme" >> ${ZDOTDIR:-$HOME}/.zshrc
exit
```
```
sudo pacman -S ttf-meslo-nerd
```

### andere gute fonts
```
sudo pacman -S nerd-fonts adobe-source-code-pro-fonts ttf-font-awesome powerline-fonts 
```

#### [Recommended Font](https://github.com/romkatv/powerlevel10k/blob/master/font.md)
```
yay -S ttf-meslo-nerd-font-powerlevel10k 
```
```
MesloLGS NF Regular
```

### Update (all)
```
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
```
```
sed -i 's/\#\ alias\ ohmyzsh\=\"mate\ \~\/.oh-my-zsh\"/\#\ alias\ ohmyzsh\=\"mate\ \~\/.oh-my-zsh\"\nalias\ fullomzupdate=\"\npushd\ ~\/.oh-my-zsh\/custom\/plugins\/zsh-autosuggestions\/\ngit\ pull\npopd\npushd\ ~\/.oh-my-zsh\/custom\/plugins\/zsh-completions\/\ngit\ pull\npopd\npushd\ ~\/.oh-my-zsh\/custom\/plugins\/zsh-history-substring-search\/\ngit\ pull\npopd\npushd\ ~\/.oh-my-zsh\/custom\/plugins\/zsh-syntax-highlighting\/\ngit\ pull\npopd\npushd\ ~\/.oh-my-zsh\/custom\/themes\/powerlevel10k\/\ngit\ pull\npopd\nomz\ update\nexec\ zsh\n"/g' ~/.zshrc
```

## hyfetch using fastfetch
```
sudo pacman -S fastfetch hyfetch
```
Put at the beginning of `~/.zshrc`:
```
sleep 0.2
hyfetch
```
```
sed -i '1 i\sleep\ 0.2\nhyfetch' ~/.zshrc
```

