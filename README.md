# Laptop Setup

## Install brew

Run the bash script from the [brew.sh](https://brew.sh/) homepage

## Install fish

```sh
brew install fish
```

Set Fish as default shell (check docs/fish_setup)

## Install fish theme with Oh My Posh (still WIP)

```sh
brew tap jandedobbeleer/oh-my-posh
brew install oh-my-posh

oh-my-posh --init --shell fish --config (brew --prefix oh-my-posh)/themes/pure.omp.json | source
```

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
brew install the_silver_searcher
brew install exa

brew install coreutils
brew install curl
brew install git
brew install asdf

brew install podman
```

### the_silver_searcher (ag)

This dependency is needed for the ctrl-p search to work properly in vim.
Properly as in: correctly ignoring node_modules when searching files

## Dotfiles

_A set of vim, fish, git, and tmux configuration files._

Inspired by [thoughtbot/dotfiles](https://github.com/thoughtbot/dotfiles).

### Usage

Clone dotfiles

```sh
git clone git@github.com:GertjanReynaert/dotfiles.git
```

Register dotfiles folder for rcup installation

```sh
env RCRC=$HOME/dotfiles/rcrc rcup
```
