# oh my fish
https://github.com/oh-my-fish/oh-my-fish

## https://github.com/oh-my-fish/theme-bobthefish

### [Display datetime/cmd_duration at first line when newline_cursor is enabled](https://github.com/oh-my-fish/theme-bobthefish/issues/116)
In `~/.local/share/omf/themes/bobthefish/functions/fish_right_prompt.fish` replace `fish_right_prompt` with:
```zsh
function fish_right_prompt -d 'bobthefish is all about the right prompt'
  set -l __bobthefish_left_arrow_glyph \uE0B3
  if [ "$theme_powerline_fonts" = "no" ]
    set __bobthefish_left_arrow_glyph '<'
  end

  set_color $fish_color_autosuggestion

  echo -e "\e[A"
  __bobthefish_cmd_duration
  __bobthefish_timestamp
  set_color normal
  echo -e "\e[B"
end
```