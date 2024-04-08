function add_dock_space
  defaults write com.apple.dock persistent-apps -array-add "{"tile-type"="spacer-tile";}"; and killall Dock
end

function diff_image
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

function restart_adb
  adb kill-server
  adb start-server
end

function run_ios_devices
  # iPhone SE
  npm run ios:debug -- --udid="D1BD4DF5-6AAC-442B-8A3F-98C9462D5A82"

  # iPhone 14 (Configured with larger text size)
  npm run ios:debug -- --udid="AD5DD695-E44F-43B9-A73C-D168A94D25CB"

  # iPhone 14 Pro
  npm run ios:debug -- --udid="0144ED7F-2233-43AA-9165-48D887DB33CE"

  # iPhone 14 Plus
  npm run ios:debug -- --udid="8F3624D9-1C3E-46A7-94D6-9CD7215492AD"
end

function run_all_device_sizes
  run_ios_devices

  # android
  npm run android:debug
end

function run_both
  npm run ios:debug
  npm run android:debug
end
