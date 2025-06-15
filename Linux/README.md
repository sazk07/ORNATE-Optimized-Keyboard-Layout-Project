# Install

1. open bash shell (or zsh or fish)
```bash
$ git clone https://github.com/sazk07/ORNATE-Optimized-Keyboard-Layout-Project.git
```
(install git beforehand if you have to)

2. run install script `install.sh` (don't forget to set the chmod to exec)

```bash
chmod +x install.sh && ./install.sh
```
3. go to `Settings > Keyboard > Input Sources > English (US) > ORNATE`. Log out and Log in and the layout will appear (you can do the same for any of ORNATE's mods i.e. ORNATE for programming, ORNATE wide mod, ORNATE for programming WIDE mod)

## ALTERNATIVELY

you can also make it persistent via cli by adding it to your xinitrc file:

```bash
echo 'xkbcomp -I$HOME/.xkb/keymap $DISPLAY' >> ~/.xinitrc // or wherever your xinitrc file is located
```

## ORNATE keyboard map

![ORNATE Keyboard map](./img/ORNATE.jpg)

## ORNATE wide mod

![ORNATE wide mod](./img/ORNATE%20wide%20mod.jpg)

## ORNATE for programming

![ORNATE for programming](./img/ORNATE%20for%20programming.jpg)

## ORNATE for programming WIDE mod

![ORNATE for programming WIDE mod](./img/ORNATE%20for%20programming%20WIDE%20mod.jpg)
