# Dotfiles

_A set of vim, fish, git, and tmux configuration files._

Inspired by [thoughtbot/dotfiles](https://github.com/thoughtbot/dotfiles). (No
longer needed though).

## Prerequisites

1. Install 1Password
    1. Activate accounts
    2. SSH setup has to wait until later
2. Download your personal ssh key from 1password and put into the `~/.ssh`
   folder

## Usage

Clone dotfiles

```sh
git clone git@github.com:GertjanReynaert/dotfiles.git
```

## Install brew

### Installation

Run the bash script from the [brew.sh](https://brew.sh/) homepage

### Configuration

As ZSH is at this point still MacOS's default shell, you'll need to do the brew
setup in your `.zshrc` file to be able to use brew.

As you're installing fish with brew, you'll first need brew to work in ZSH.

```sh
TODO: fill in config here
```

### Install all dependencies through brew

By starting an install, all dependendies in the `brewfile` will be installed.

```sh
brew bundle
```

## Properly register all dotfiles

Install rcm (brew package name for rcup) && register dotfiles folder for rcup installation

```sh
env RCRC=$HOME/dotfiles/rcrc rcup
```

## Fish setup

### Default shell

Set Fish as default shell

```sh
./docs/fish_setup
```

### Fish Theme

Unclear at this point.

I suspect this theme is included in the dotfiles fish folder.

As Fish Pure has switched to fisher, you can still do the manual install through
their website.

TODO:
- Explore Fisher
- Oh My Posh


Do the manual install of pure Fish from the [github repo](https://github.com/pure-fish/pure#manually)

#### Install fish theme with Oh My Posh (still WIP)

```sh
brew tap jandedobbeleer/oh-my-posh
brew install oh-my-posh

oh-my-posh --init --shell fish --config (brew --prefix oh-my-posh)/themes/pure.omp.json | source
```

## Install runtimes

Install global runtimes for nodejs, ruby and others

```sh
asdf install
```

## Setup ssh config

### Activate SSH in 1Password

[Official 1Password guide for activating ssh support](https://developer.1password.com/docs/ssh/get-started/#step-3-turn-on-the-1password-ssh-agent)

### Activate 1Password SSH Client

[Official 1Password guide of configuring ths ssh client (summarized below)](https://developer.1password.com/docs/ssh/get-started/#step-4-configure-your-ssh-or-git-client)

1. Add the snippet below to `~/.ssh/config`

```ss
Host *
  IdentityAgent "~/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock"
```

2. The guide will also mention that you need to export the `SSH_AUTH_SOCK`
   variable, but that's already done in `exports.fish`

THIS IS THE MAIN REASON WHY THE SSH SETUP NEEDED TO WAIT IN THE START:

as exports.fish is only available after the dotfiles are fetched, you have an
unusable ssh setup to clone the dotfiles in the first place.

### Validate setup

By running ssh-add, you can get the list of all available SSH keys. If the setup
was correctly done, this should show you all keys available through 1Password

```sh
ssh-add -l
```

### Remove the downloaded SSH key

Now you can remove the manually downloaded ssh key from the `~/.ssh` folder, as
you can now safely use the ssh keys from 1Password

## Notes

### Dotfiles updates

To apply dotfile changes just run rcup again

```sh
rcup
```

### the_silver_searcher (ag)

This dependency is needed for the ctrl-p search to work properly in vim.
Properly as in: correctly ignoring node_modules when searching files


