# Language config
set -x LANG en_US.UTF-8
set -x LC_ALL en_US.UTF-8
set -x LC_NUMERIC en_US.UTF-8
set -x LC_TIME en_US.UTF-8
set -x LC_COLLATE en_US.UTF-8
set -x LC_MONETARY en_US.UTF-8
set -x LC_MESSAGES en_US.UTF-8

# Applications
set -xg PAGER "less"
set -xg MANPAGER "$PAGER"
set -xg EDITOR "vim"
set -xg TERM "xterm-256color"
set -xg ANDROID_HOME $HOME/Library/Android/sdk
set -xg ANDROID_SDK_ROOT $HOME/Library/Android/sdk
# 1Password SSH socket agent
set -xg SSH_AUTH_SOCK ~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock

# NVIM
export NVIM_TUI_ENABLE_TRUE_COLOR 0

# Paths
set PATH /usr/local/bin $PATH
set PATH $HOME/.bin $PATH

# Fish method for paths: https://fishshell.com/docs/current/cmds/fish_add_path.html

# Path android
fish_add_path $ANDROID_HOME/emulator
fish_add_path $ANDROID_HOME/tools
fish_add_path $ANDROID_HOME/tools/bin
fish_add_path $ANDROID_HOME/platform-tools

fish_add_path /opt/homebrew/opt/crowdin@3/bin
fish_add_path $HOME/.maestro/bin
fish_add_path $HOME/.fastlane/bin
