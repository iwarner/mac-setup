# INTRODUCTION

These set of scripts are used at DryKiss to create a stable and consistent
development maching.

## Requirements

The lastest XCode must be installed before initiaiting these scripts

The script assume an install directory of

    $ cd ~"/Dropbox/Server Files/Server Local/Setup"

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

[Todo][TODO.md]

## Changelog

[Changelog][CHANGELOG.md]
