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

function ip
  set localip (ipconfig getifaddr en0)
  set remoteip (dig +short myip.opendns.com @resolver1.opendns.com)

  echo "Local ip:  $localip"
  echo "Remote ip: $remoteip"
end

function find_cyclical_dependencies
  npx madge --ts-config tsconfig.json --circular --extensions ts,tsx src
end
