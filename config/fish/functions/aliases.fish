alias ls "exa"
alias ll "exa --long --header --git"
alias ln "ln -v"

alias list "ls"
alias list_hidden "ls -al"
alias listlong "ll"
alias move "mv"
alias copy "cp"
alias link "ln"

alias makeExecutable "chmod +x"
alias mime "file --mime-type"

alias e "$EDITOR"

alias claer "clear"
alias clera "clear"

alias g "git"

alias b "bundle"
alias be "bundle exec"

alias usage "npx vtop"
alias cpu "npx vtop"
alias monitor "npx vtop"
alias activity "npx vtop"

# alias ip => check functions
alias nettest "ping www.google.be"
alias fast "npx fast-cli --upload"
alias speedtest "fast"

# folder navigation
alias back "cd -"
alias dev "cd ~/Code"
alias hobby "cd ~/Code/gertjanreynaert"
alias personal "hobby"
alias work "cd ~/Code/ITP"
alias dotfiles "cd ~/dotfiles"

# Physical device & simulator detection
alias ios_devices "xcrun xctrace list devices"
alias android_devices "adb devices"

# Replaced by function, as this alias dropped the first line and the function does not
# This alias also used the zsh output which has : separators while the function
# uses the fish echo output which has spaces as separators

# alias path "echo $PATH | tr -s ':' '\n'"
