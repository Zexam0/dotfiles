# DOTFILES 

Contains useful dotfiles to deploy configurations easier

## Requierements 

Make sure you have git and GNU stow installed

```
$ "package manager install" stow
```

## Installation

Clone this repo in your $HOME directory using the following

```
$ git clone git@github.com/Zexam0/dotfiles.git
$ cd dotfiles
```

Then use GNU stow to create the symlinks 

```
$ stow .
```

## Terminal config

Check which terminal you're using and then you can use this to load it

```
$ dconf load /org/gnome/terminal/legacy/profiles:/ < gnome_settings.txt
```
