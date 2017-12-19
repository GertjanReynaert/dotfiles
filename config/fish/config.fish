set -g -x fish_greeting ''

# Functions
source "$HOME/.config/fish/functions/exports.fish"
source "$HOME/.config/fish/functions/aliases.fish"
source "$HOME/.config/fish/functions/functions.fish"

# THEME PURE
# Use this installer: https://github.com/rafaelrinaldi/pure#manually
set fish_function_path /Users/gertjanreynaert/.config/fish/functions/theme-pure $fish_function_path

set pure_color_blue (set_color blue)
set pure_color_cyan (set_color cyan)
set pure_color_gray (set_color "686868")
set pure_color_green (set_color magenta)
set pure_color_normal (set_color white)
set pure_color_red (set_color red)
set pure_color_yellow (set_color yellow)
