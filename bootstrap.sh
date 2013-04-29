#!/usr/bin/env bash

######################################################################
#                                                                    #
# Create required setup for this machine                             #
#                                                                    #
# cd   ~/Dropbox/Service\ Files/Server\ Local/Setup                  #
# bash ~/Dropbox/Service\ Files/Server\ Local/Setup/bootstrap.sh     #
#                                                                    #
######################################################################

# Options

# set -u
# set -e

# Paths

BASH_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CURRENT_DIR=`pwd`

# Include Options

. "$BASH_PATH"/lib/options.sh

# Include Functions

. "$BASH_PATH"/lib/functions.sh

# Welcome Message

hello "Mac OSX Setup Script" "This will setup the necessary software for MAC OSX Development"

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


# Ask user if they wish to continue

log "Continue? (y/Y)"
read CONTINUE

# Proceed if the user answered y or Y

if [[ $CONTINUE == y || $CONTINUE == Y ]] ; then

    # Check XCODE and Command Line Tools are installed - GCC

    # . "$BASH_PATH"/recipes/settings/gcc/install.sh

    # Install HomeBrew

    # . "$BASH_PATH"/recipes/applications/homebrew/install.sh

    # Install Git

    # . "$BASH_PATH"/recipes/applications/git/install.sh

    # Install RBENV

    # . "$BASH_PATH"/recipes/applications/rbenv/install.sh

    # Install ZSH

    # . "$BASH_PATH"/recipes/applications/zsh/install.sh

    # Install Oh My ZSH

    # . "$BASH_PATH"/recipes/applications/oh_my_zsh/install.sh

    # Install Sublime

    # . "$BASH_PATH"/recipes/applications/sublime_text/install.sh

    # Install Google Chrome

    # . "$BASH_PATH"/recipes/applications/google_chrome/install.sh

    # Install MySQL

    # . "$BASH_PATH"/recipes/applications/mysql/install.sh

    # Install PHP

    # . "$BASH_PATH"/recipes/applications/php/install.sh

    # Configure SSH

    # . "$BASH_PATH"/recipes/settings/ssh/install.sh

    # ITunes Settings

    # . "$BASH_PATH"/recipes/settings/itunes/install.sh

    # Configure required Gems

    # . "$BASH_PATH"/recipes/settings/gems/install.sh

    # Configure OSX Defaults

    # . "$BASH_PATH"/recipes/settings/osx/install.sh

    # Exit Script

    log "-e \\n"

    abort

fi
