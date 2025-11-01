function nvimpluginsupdate --wraps='nvim --headless "+Lazy! sync" +qa; nvim --headless "+MasonToolsUpdateSync" +qa' --description 'alias nvimpluginsupdate=nvim --headless "+Lazy! sync" +qa; nvim --headless "+MasonToolsUpdateSync" +qa'
    nvim --headless "+Lazy! sync" +qa; nvim --headless "+MasonToolsUpdateSync" +qa $argv
end
