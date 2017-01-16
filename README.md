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

## Git

### fancy diffs

[diff-so-fancy](https://github.com/so-fancy/diff-so-fancy)

## Neovim

### install

Install with [brew](https://github.com/neovim/homebrew-neovim/blob/master/README.md)

### setup

Symlink vim setup to nvim setup

```
ln -s $HOME/.vim $HOME/.nvim
ln -s $HOME/dotfiles/vimrc $HOME/.nvimrc
```
