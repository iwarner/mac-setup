#!/usr/bin/env bash

################################################################################
#                                                                              #
# Rbenv Recipe                                                                 #
#                                                                              #
# https://github.com/sstephenson/rbenv/                                        #
#                                                                              #
# To use Homebrew's directories rather than ~/.rbenv add                       #
# export RBENV_ROOT=/usr/local/var/rbenv                                       #
#                                                                              #
# To enable shims and autocompletion add to your profile:                      #
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi                  #
#                                                                              #
# rbenv install -l                                                             #
#                                                                              #
################################################################################

# Variables
VERSION=2.3.1

# Header
header "RBENV Installation Script"

log "Continue (y/Y)"
read RBENV_CONTINE

if [[ $RBENV_CONTINE == y || $RBENV_CONTINE == Y ]] ; then

    subheader "Brew Update"
    brew update

    subheader "Install Rbenv, Rbenv Gem and Ruby Build"
    brew install rbenv ruby-build

    eval "$(rbenv init - --no-rehash)"

    # Install Ruby Version
    subheader "Install Ruby Version"

    CONFIGURE_OPTS="--disable-install-doc --with-readline-dir=$(brew --prefix readline)" rbenv install $VERSION

    rbenv global $VERSION
    rbenv rehash

    # Remove User Gems folder
    rm -r ~/.gem

fi
