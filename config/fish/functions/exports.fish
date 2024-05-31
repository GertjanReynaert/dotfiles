# Language config
set -x LANG en_US.UTF-8
set -x LC_ALL en_US.UTF-8
set -x LC_NUMERIC en_US.UTF-8
set -x LC_TIME en_US.UTF-8
set -x LC_COLLATE en_US.UTF-8
set -x LC_MONETARY en_US.UTF-8
set -x LC_MESSAGES en_US.UTF-8

# Applications
set -xg HOMEBREW_BUNDLE_FILE .brewfile
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
