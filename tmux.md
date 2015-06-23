# TMUX settings

## General

Make Vim responsive to "esc"

```
set -s escape-time 0
```

Setup 'v' to begin selection as in Vim

```
bind-key -t vi-copy v begin-selection
bind-key -t vi-copy y copy-pipe "reattach-to-user-namespace pbcopy"
```

Update default binding of `Enter` to also use copy-pipe

```
unbind -t vi-copy Enter
bind-key -t vi-copy Enter copy-pipe "reattach-to-user-namespace pbcopy"
```

## Essentials
reload the tmux config with "r"

```
bind-key r source-file ~/.tmux.conf \; display-message "~/.tmux.conf reloaded"
```

override C-s thoughtbot prefix to C-a

```
set -g prefix C-a
```

### Creating windows and panes

Create new window

```
bind c new-window -c "#{pane_current_path}"
```

Create a horizontal split with leader-[dash]

```
bind - split-window -v -c "#{pane_current_path}"
```

Create a horizontal split with leader-\

```
bind \ split-window -h -c "#{pane_current_path}"
```

Close a pane

```
bind-key b break-pane -d
```

### Pane resizing

Shift + arrow key

```
bind -n S-Left resize-pane -L 2
bind -n S-Right resize-pane -R 2
bind -n S-Down resize-pane -D 1
bind -n S-Up resize-pane -U 1
```

### Pane border color

Make active pane border color yellow, default orange

```
set-option -g pane-border-fg colour166
set-option -g pane-active-border-fg colour220
```

## Statusbar

### General

Set statusbar position

```
set -g status-position bottom
```

Set status bar background

```
set-option -g status-bg colour235 #base02 status bar background color
```

Set status bar default text color (Yellow)

```
set-option -g status-fg colour136
```

Enable statusbar attributes

```
set-option -g status-attr default
```

### Left

Set session name to the left
Format in orange background, with dark gray text color
Set length to 32 to support fairly long session names

```
set -g status-left "#[fg=colour236,bg=colour166] #S "
set -g status-left-length 32
```

### Center

Set panes in center

```
set -g status-justify centre
```

Format default panes by just displaying the pane number and name
Color formatting by setting the number with a blue background and light gray
text color, the pane name with a gray background, and light gray text.

The paler, but legible colors make the panes legible, but do not draw away the
focus from the current pane.

```
setw -g window-status-format "#[fg=white,bg=blue] #I #[bg=colour236,fg=white] #W "
```

Format default panes by just displaying the pane number and name
Color formatting by setting the number with a bright yellow background and white
text color, the pane name with a gray background, and white text.

The brighter colors give more focus to the current pane.

```
setw -g window-status-current-format "#[bg=colour220,fg=colour236] #I #[fg=white,bold,bg=colour236] #W "
```

### Right

Set time to the right (HH:MM)
No color formatting, just default unobtrusive yellow text color

```
set -g status-right '#(date "+%R")'
```


## Misc

### Tmux message text

```
set-option -g message-bg colour236 #base02
set-option -g message-fg colour220 #yellow
```

### Pane number display

Show pane numbers with Leader-q

As in the status bar the default formatted with blue, active with yellow

```
set-option -g display-panes-active-colour colour220 #yellow
set-option -g display-panes-colour blue #blue
```

### clock

Set color for tmux clock (leader-t)

```
set-window-option -g clock-mode-colour colour220 #yellow
```

Make sure tmux refreshes time every second

```
set -g status-interval 1
```

## Small docs

### Colors

Color codes are 256 colors, for easy reference you can check color codes
[here](https://upload.wikimedia.org/wikipedia/en/1/15/Xterm_256color_chart.svg)

### Possible [date formats](http://man.cx/strftime(3):

Summary of usefull ones to me, follow link in the title for full manpage result

`(LONG)` means uppercase variant is the long notation

`c`: datetime = (%a %b %T %G)

`R`: time HH:MM (24h format)

`T`: time HH:MM:SS (24h format)

`v`: date DD-month(short)-YYYY

`D`: date MM/DD/YYYY

`F`: date YYYY-MM-DD

`G`: year (4 digits)

`m`: month number

`b`: month human short (LONG)

`d`: day number short

`a`: day human short (LONG)

`H`: hour (24h format)

`M`: minute

`S`: seconds

### Possible elements for statusbar

`#F` Current window flag (just a star)

`#S` Session name

`#I` Current window index (Pane number)

`#P` Current Pane index (weird behaviour)

`#H` Hostname of local host (PC-name)

`#T` Current window title (Same as `#H`)

`#W` Current window name (Pane name)
