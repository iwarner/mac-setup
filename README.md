# INTRODUCTION

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

The script assume an install directory of

    $ cd ~"/Dropbox/Service Files/Server Local/Setup"

Please create this directory and then git clone the repository

    $ mkdir -p ~/Dropbox/Server\ Files/Server\ Local/
    $ git clone git@github.com:DryKiss/mac-setup.git ~/Dropbox/Server\ Files/Server\ Local/Setup

## Usage

Make sure the bootstrap.sh is executable

    $ cd ~"/Dropbox/Server Files/Server Local/Setup"
    $ chmod u+x ./bootstrap.sh

Edit the script to uncomment the items that need installing, leaving everything
uncommented should be fine as there are checks to see if items are already configured.

    $ cd ~"/Dropbox/Server Files/Server Local/Setup"
    $ ./bootstrap.sh

Dotfiles should be edited here; or appended too when other programs edit them.
As running this script will overwrite them

## Configuration

Edit the dotfiles file with your specific details i.e. .gitconfig username and email.

## Todo

[Todo](TODO.md)

## Changelog

[Changelog](CHANGELOG.md)
