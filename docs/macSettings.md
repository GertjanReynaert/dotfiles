# Mac general settings

## General

* Appearance: AUTO
* Accent color: blue
* Highlight color:
  * CUSTOM, dark scale: left (brightest), green, on edge with yellow
  * R: 202, G: 248, B: 51

```
defaults write NSGlobalDomain AppleHighlightColor -string "0.791881 0.974023 0.200028"
```

* Sidebar icon size: MEDIUM
* Allow wallpaper tinting in windows: CHECK

* scrollbars: AUTO
* click scrollbar: JUMP TO THE SPOT THAT'S CLICKED

* default browser: FIREFOX

* Prefer tabs: FULL SCREEN
* Ask to keep changes when closing documents: NO
* Close windows when quitting an app: YES
* recent items: 10
* allow handoff: YES

## Desktop & screensaver

* Desktop: AUTOMATIC (BIG SUR DEFAULT)

* Screensaver: Brooklyn.saver (see dropbox wallpapers folder)

## Dock & Menu Bar

* Size: Smallest -> 1 increase step with Option key
* Magnification: ON
* Magnification size: 2/3
* Position on screen: BOTTOM

* Double click titlebar: zoom
* Minimize applications in app icon: NO
* Animate opening applications: YES
* Auto hide/show dock: NO
* Show indicators for open applications: YES
* Show recent applications in Dock: NO

* Icons: finder, iterm, chrome canary, downloads, trash

### WiFi

* Show in Menu Bar: NO

### Bluetooth

* Show in Menu Bar: NO

### AirDrop

* Show in Menu Bar: NO

### Do Not Disturb

* Show in Menu Bar: YES - WHEN ACTIVE

### Keyboard Brightness

* Show in Menu Bar: NO

### Screen Mirroring

* Show in Menu Bar: NO

### Display

* Show in Menu Bar: YES - WHEN ACTIVE

### Sound

* Show in Menu Bar: NO

### Now Playing

* Show in Menu Bar: NO

### Accessibility

* Show in Menu Bar: NO
* Show in Control Center: NO

### Battery

* Show in Menu Bar: YES
* Show in Control Center: NO
* Show Percentage: YES

### Fast User Switching

* Show in Menu Bar: NO
* Show in Control Center: NO

### Clock

* Show the day of the week: YES
* Show date: NO

* Time Options: DIGITAL
* Use a 24-hour clock: YES
* Flash the time separators: YES
* Display the time with seconds: NO
* Announce the time: NO

### Spotlight

* Show in Menu Bar: NO

### Siri

* Show in Menu Bar: NO

### Time Machine

* Show in Menu Bar: YES

## Mission control

* Automatically rearrange Spaces based on most recent use: NO
* When switching to an application, switch to a Space with open windows for the
application: YES
* Group windows by application: NO
* Displays have separate Spaces: YES

* Mission control: ^+up-arrow
* Application windows: ^+down-arrow
* Show desktop: F11

## Siri

DISABLED

## Spotlight

Default

## Language & Region

* English

* First Day of week: MONDAY
* Calendar: GREGORIAN
* Time format: 24HOUR
* Temperature: CELCIUS

## Notifications

* Do Not Disturb: ON - 22h to 7h
* When the display is sleeping: NO
* when the screen is locked: NO
* When mirroring to TV's and projectors: YES

* Allow calls from everyone: NO
* Allow repeated calls: NO

## Accessibility

* Pointer Control -> Mouse & Trackpad -> Trackpad options -> Enable dragging:
ON - Three finger drag

## Security & Privacy

* Require password after sleep or screen saver begins: YES - IMMEDIATELY
* Use apple watch to unlock: YES

## Keyboard

* Key Repeat: Fastest

```
defaults write -g InitialKeyRepeat -int 20
```

* Delay Until Repeat: Shortest

* Enable key repeat

```
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
```

## Trackpad

* (Already in Accessibility) Three finger drag:
  SystemPreferences/accessibility/mouseAndTrackpad/trackpadOptions

### Point and click

* Look up & data detectors: YES
* Secondary click: YES, click or tap with two fingers
* Tap to click: YES

* Click: MEDIUM
* Tracking speed: 4

* Force click & haptic feedback: YES

### Scroll & zoom

* Scroll direction natural: YES
* Zoom in or out: YES
* Smart zoom: NO
* Rotate: NO

### More gestures

* Swipe between pages: NO
* All the rest: YES

## Status bar

(rtl)

* Time (digital, 24h clock, weekday, no seconds but blinking :)
* Control Center
* Time Machine
* Battery (show percentage)

Third party:

* Audio balance
* Postgresql
* 1Password
* Dropbox

## Dock

### Apps

* Finder
* Activity Monitor
* System Preferences

(Space)

* Firefox
* Safari

(Space)

* iTerm
* VSCode
* XCode
* Simulator
* Figma

(Space)

* Spark
* Slack
* 1Password

### Downloads folder

* Replace with DESKTOP folder

* Sort by KIND
* Display as FOLDER
* View content as GRID

## Finder

### Sidebar

#### Favorites

* Desktop
* Applications
* Dropbox
* Documents
* Code
* Downloads
* AirDrop
* gertjanreynaert

#### iCloud Drive

show

#### Locations

show

#### Tags

hide

### ButtonBar

* Back buttons

(Space)

* New folder

(Space)

* Path
* Action
* Share

(Space)

* View

(Space)

* Search

## Apps to install

### AppStore

* Xcode
* Unarchiver
* iWork (Pages, Numbers, Keynote)
* balance lock
* DevCleaner for Xcode

### downloads

* Xcode devtools (top menu: Xcode/open developer tools/ more dev tools)
* [Iterm2](https://iterm2.com/downloads.html)
* [Iterm2 cobalt2 color theme](https://raw.githubusercontent.com/wesbos/Cobalt2-iterm/master/cobalt2.itermcolors)
  (click right -> save as...)
* [RectangleApp](https://rectangleapp.com/)
* [Firefox (Stable)](https://www.mozilla.org/en-US/firefox/new/)
* [Dropbox](https://www.dropbox.com/downloading)
* [1Password](https://1password.com/downloads/mac/)
* [Spotify](https://www.spotify.com/be-nl/download/mac/)
* [VSCode](https://code.visualstudio.com/)
* [Android Studio](https://developer.android.com/studio/index.html)
* [Genymotion](https://www.genymotion.com/fun-zone/)
* [PostgresApp](https://postgresapp.com/documentation/all-versions.html)
* [Slack](https://slack.com/downloads/osx)
* [Figma](https://www.figma.com/downloads/)
* [Zoom](https://zoom.us/download)

* [AppCleaner](https://freemacsoft.net/appcleaner/)

## Iterm2 settings

### Colors

Import cobalt2 color scheme

## Slack colors

```
#193549,#254155,#FFE633,#254155,#205569,#FFFFFF,#FFE633,#FDC400,#254155,#FFFFFF
```

### Text

use different font for non-ASCII text: YES 13pt Menlo regular
