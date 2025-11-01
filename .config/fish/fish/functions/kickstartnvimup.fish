function kickstartnvimup --description alias\ kickstartnvimup=\npushd\ \~/.config/nvim/\ncurl\ -LJO\ https://raw.githubusercontent.com/nvim-lua/kickstart.nvim/refs/heads/master/init.lua\npopd\n
    
pushd ~/.config/nvim/
curl -LJO https://raw.githubusercontent.com/nvim-lua/kickstart.nvim/refs/heads/master/init.lua
popd
 $argv
end
