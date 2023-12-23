# Introduction

These set of scripts are used at DryKiss to create a stable and consistent
development machine.

## Appreciation

If you like using this script and want to Flattr it please do so.

Submitting pull requests though and joining the community is appreciated just as much.

[![Flattr this][2]][1]

[1]: https://flattr.com/submit/auto?user_id=drykiss&url=https://github.com/DryKiss/mac-setup&title=Mac+OSX+Development+Scripts&language=English&tags=github,bash,mac,osx,development&category=software
[2]: http://api.flattr.com/button/flattr-badge-large.png

Thank you.

## Requirements

The latest XCode must be installed before initiating these scripts

The script assumes an install directory of

    $ cd ~"/Documents/m/mac-setup"

Please create this directory and then git clone the repository

    $ mkdir -p ~/Documents/m/mac-setup
    $ git clone git@github.com:DryKiss/mac-setup.git ~/Documents/m/mac-setup

## Usage

Make sure the bootstrap.sh is executable

    $ cd ~/Documents/m/mac-setup
    $ chmod u+x ./bootstrap.sh

Edit the script to uncomment the items that need installing, leaving everything
uncommented should be fine as there are checks to see if items are already configured.

    $ cd ~/Documents/m/mac-setup
    $ ./bootstrap.sh

Dotfiles should be edited here; or appended too when other programs edit them.
As running this script will overwrite them

## Configuration

Edit the dotfiles file with your specific details i.e. .gitconfig username and email.

## Todo

[Todo](TODO.md)

## Changelog

[Changelog](CHANGELOG.md)

## Backup

### Mac Book -> DryKISS Portable

rsync --perms \
 --owner \
 --group \
 --times \
 --links \
 --devices \
 --delete \
 --delete-excluded \
 --ignore-errors \
 --recursive \
 --progress \
 --human-readable \
 --exclude .DS_Store \
 --exclude .next \
 --exclude node_modules \
 ~/Documents/ \
 /Volumes/DryKISS

### DryKISS Portable -> Mac Book

rsync --perms \
 --owner \
 --group \
 --times \
 --links \
 --devices \
 --delete \
 --delete-excluded \
 --ignore-errors \
 --recursive \
 --progress \
 --human-readable \
 --exclude node_modules \
 --exclude .DS_Store \
 /Volumes/DryKISS/ \
 ~/Documents

### iMac -> DryKISS Portable

rsync --perms \
 --owner \
 --group \
 --times \
 --links \
 --devices \
 --delete \
 --delete-excluded \
 --ignore-errors \
 --recursive \
 --progress \
 --human-readable \
 --exclude .DS_Store \
 --exclude .next \
 --exclude node_modules \
 ~/Documents/ \
 /Volumes/DryKISS

### DryKISS Portable -> iMac

rsync --perms \
 --owner \
 --group \
 --times \
 --links \
 --devices \
 --delete \
 --delete-excluded \
 --ignore-errors \
 --recursive \
 --progress \
 --human-readable \
 --exclude .DS_Store \
 --exclude m/movies \
 --exclude .next \
 --exclude node_modules \
/Volumes/DryKISS/ \
~/Documents

## Bootable USB

- \$ sudo /Applications/Install\ macOS\ Mojave.app/Contents/Resources/createinstallmedia --volume /Volumes/MyVolume
- \$ sudo /Applications/Install\ macOS\ Catalina.app/Contents/Resources/createinstallmedia --volume /Volumes/MyVolume
