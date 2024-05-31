# Dotfiles

_A set of vim, fish, git, and tmux configuration files._

Inspired by [thoughtbot/dotfiles](https://github.com/thoughtbot/dotfiles).

## Usage

Clone dotfiles

```sh
git clone git@github.com:GertjanReynaert/dotfiles.git
```

Register dotfiles folder for rcup installation

```sh
env RCRC=$HOME/dotfiles/rcrc rcup
```

## Dotfiles updates

To apply dotfile changes just run rcup again

```sh
rcup
```

# Install other dependencies

## Install brew

Run the bash script from the [brew.sh](https://brew.sh/) homepage

## Install brew dependencies (fish & others)

```sh
brew bundle
```

## Fish setup

### Default shell

Set Fish as default shell

```sh
./docs/fish_setup
```

### Fish Theme

Do the manual install of pure Fish from the [github repo](https://github.com/pure-fish/pure#manually)

#### Install fish theme with Oh My Posh (still WIP)

```sh
brew tap jandedobbeleer/oh-my-posh
brew install oh-my-posh

oh-my-posh --init --shell fish --config (brew --prefix oh-my-posh)/themes/pure.omp.json | source
```

## Install runtimes

Install global runtimes for nodejs, ruby and others

```
asdf install
```

### the_silver_searcher (ag)

This dependency is needed for the ctrl-p search to work properly in vim.
Properly as in: correctly ignoring node_modules when searching files
