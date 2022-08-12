# Install

1. open bash shell (or zsh or fish)
```bash
$ git clone https://github.com/sazk07/ORNATE-Optimized-Keyboard-Layout-Project.git 
```
(install git beforehand if you have to)

2. make backups of existing `/usr/share/X11/xkb/rules/evdev.lst` and `/usr/share/X11/xkb/rules/evdev.xml`
```bash
$ cp /usr/share/X11/xkb/rules/evdev.* ~/` 
```

3. run install script `install.sh` (don't forget to set the chmod to exec)

```bash
$ chmod +x && ./install.sh
```
4. go to `Settings > Keyboard > Input Sources > English (US) > ORNATE`. Log out and Log in and the layout will appear (you can do the same for any of ORNATE's mods i.e. ORNATE for programming, ORNATE wide mod, ORNATE for programming WIDE mod)

## ALTERNATIVELY
you can directly use `setxkbmap` to set the keyboard layout

```bash
$ chmod +x && ./install.sh && setxkbmap or
```

## ORNATE keyboard map

![ORNATE Keyboard map](./img/ORNATE.jpg)

## ORNATE wide mod

![ORNATE wide mod](./img/ORNATE%20wide%20mod.jpg)

## ORNATE for programming

![ORNATE for programming](./img/ORNATE%20for%20programming.jpg)

## ORNATE for programming WIDE mod

![ORNATE for programming WIDE mod](./img/ORNATE%20for%20programming%20WIDE%20mod.jpg)