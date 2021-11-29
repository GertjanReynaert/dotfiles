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

# Paths
set PATH /usr/local/bin $PATH
# set PATH /usr/local/sbin $PATH
set PATH $HOME/.bin $PATH
# set PATH $PATH $HOME/bin

set PATH $HOME/Library/Python/3.9/bin $PATH

# Path android
set PATH $PATH $ANDROID_HOME/emulator
set PATH $PATH $ANDROID_HOME/tools
set PATH $PATH $ANDROID_HOME/tools/bin
set PATH $PATH $ANDROID_HOME/platform-tools

# NVIM
export NVIM_TUI_ENABLE_TRUE_COLOR 0

# Fastlane
set -x PATH $HOME/.fastlane/bin $PATH
