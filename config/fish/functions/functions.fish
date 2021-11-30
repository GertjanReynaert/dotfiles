function mkdir
  # command is needed to avoid having errors of calling ourselves
  command mkdir -p "$argv"
  cd "$argv[1]"
end

function addDockSpace
  defaults write com.apple.dock persistent-apps -array-add "{"tile-type"="spacer-tile";}"; and killall Dock
end

function diffImage
  # install imagemagick if compare is unavailable
  type -q compare; or brew install imagemagick

  compare ~/Desktop/$argv-before.png ~/Desktop/$argv-after.png -compose src ~/Desktop/$argv-diff.png
end
