# Applications
set -xg PAGER "less"
set -xg MANPAGER "$PAGER"
set -xg EDITOR "vim"
set -xg TERM "xterm-256color"
set -xg ANDROID_HOME $HOME/Library/Android/sdk
set -xg PGHOST localhost

# Paths
set PATH /Applications/Postgres.app/Contents/Versions/9.5/bin $PATH
set PATH /usr/local/bin $PATH
set PATH /usr/local/sbin $PATH
set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.bin $PATH
set PATH $PATH $ANDROID_HOME/tools
set PATH $PATH $ANDROID_HOME/platform-tools

# NVIM
export NVIM_TUI_ENABLE_TRUE_COLOR 0
