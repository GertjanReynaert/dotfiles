# Paths
set PATH /usr/local/bin $PATH
set PATH $HOME/.bin $PATH

source (brew --prefix asdf)/libexec/asdf.fish
source "$HOME/.asdf/plugins/java/set-java-home.fish"

fish_add_path $ANDROID_HOME/emulator
fish_add_path $ANDROID_HOME/tools
fish_add_path $ANDROID_HOME/tools/bin
fish_add_path $ANDROID_HOME/platform-tools

fish_add_path /opt/homebrew/opt/crowdin@3/bin
fish_add_path $HOME/.maestro/bin
fish_add_path $HOME/.fastlane/bin
fish_add_path $HOME/.flashlight/bin


# Symlinking asdf node on `usr/local/bin/node` to avoid RN build issues in xcode
# ln -s $(which node) /usr/local/bin/node
