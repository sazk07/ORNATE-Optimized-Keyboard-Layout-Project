# Install

1. open bash shell (or zsh or fish)
2. make backups of existing `/usr/share/X11/xkb/rules/evdev.lst` and `/usr/share/X11/xkb/rules/evdev.xml`
    > `cp /usr/share/X11/xkb/rules/evdev.* ~/` (or whichever destination of your choice)

2. copy `evdev.xml` and `evdev.lst` to `/usr/share/X11/xkb/rules`
    > `sudo cp evdev.* /usr/share/X11/xkb/rules`
3. copy `or`,`orp`,`orpw`,`orw` over to `/usr/share/X11/xkb/symbols`
    > `sudo cp or* /usr/share/X11/xkb/symbols`
4. `setxkbmap or` or go to Settings > Keyboard > Input Sources > English (US) > ORNATE . Layout will appear on next login