set -g -x fish_greeting ''

# Functions
source "$HOME/.config/fish/functions/exports.fish"
source "$HOME/.config/fish/functions/aliases.fish"
source "$HOME/.config/fish/functions/functions.fish"

source (brew --prefix asdf)/libexec/asdf.fish
source "$HOME/.asdf/plugins/java/set-java-home.fish"

source "$HOME/.config/fish/functions/pure.fish"
