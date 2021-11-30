# Laptop Setup

## Install brew

Run the bash script from the [brew.sh](https://brew.sh/) homepage

## Install fish

```sh
brew install fish
```

Set Fish as default shell (check docs/fish_setup)

Set up Fish pure theme

Do the manual install of pure Fish from the [github repo](https://github.com/pure-fish/pure#manually)

## Install tools

```sh
brew install tmux
brew install vim
brew install git
brew install diff-so-fancy
brew install rcm
brew install watchman
```

## Dotfiles

_A set of vim, fish, git, and tmux configuration files._

Inspired by [thoughtbot/dotfiles](https://github.com/thoughtbot/dotfiles).

### Usage

Clone dotfiles

```sh
git clone https://github.com/GertjanReynaert/dotfiles.git
```

Register dotfiles folder for rcup installation

```sh
env RCRC=$HOME/dotfiles/rcrc rcup
```
