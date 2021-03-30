Laptop Setup
============

## Install brew

Run the bash script from the [brew.sh](https://brew.sh/) homepage

## Install fish

```
brew install fish
```

Set Fish as default shell (check docs/fish_setup)

Set up Fish pure theme

Do the manual install of pure Fish from the [github repo](https://github.com/pure-fish/pure#manually)

## Install tools

```
brew install tmux
brew install vim
brew install git
brew install diff-so-fancy
brew install rcm
brew install watchman
```

Dotfiles
========

*A set of vim, zsh, git, and tmux configuration files.*

Use in combination with [thoughtbot/dotfiles](https://github.com/thoughtbot/dotfiles).

## Usage

```
git clone https://github.com/thoughtbot/dotfiles.git dotfiles
git clone https://github.com/GertjanReynaert/dotfiles.git dotfiles-local
env RCRC=$HOME/dotfiles-local/rcrc rcup
```

## Neovim

### install

Install with [brew](https://github.com/neovim/homebrew-neovim/blob/master/README.md)

### setup

Symlink vim setup to nvim setup

```
ln -s $HOME/.vim $HOME/.nvim
ln -s $HOME/dotfiles/vimrc $HOME/.nvimrc
```
