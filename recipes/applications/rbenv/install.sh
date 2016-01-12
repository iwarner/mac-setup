#!/usr/bin/env bash

######################################################################
#                                                                    #
# Rbenv Recipe                                                       #
#                                                                    #
# https://github.com/sstephenson/rbenv/                              #
#                                                                    #
# Need to reset console before attempting updates                    #
#                                                                    #
# Todo Remove all the old Gems                                       #
# ~./gems                                                            #
# /Library/Ruby                                                      #
#                                                                    #
# To use Homebrew's directories rather than ~/.rbenv add             #
# export RBENV_ROOT=/usr/local/var/rbenv                             #
#                                                                    #
# To enable shims and autocompletion add to your profile:            #
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi        #
#                                                                    #
# Todo : Probably remove Gem updates from this                       #
#                                                                    #
######################################################################

# Variables

VERSION=1.9.3-p448

# Header

header "RBENV Installation Script"

# Install Rbenv via Brew

subheader "Install Rbenv"

brew update
brew install rbenv rbenv-gem-rehash ruby-build

# Add appropriate path

if [ -n "${ZSH_VERSION:-}" ]; then
    echo 'eval "$(rbenv init - --no-rehash)"' >> ~/.zshrc
else
    echo 'eval "$(rbenv init - --no-rehash)"' >> ~/.bash_profile
fi

eval "$(rbenv init - --no-rehash)"

# Install Ruby Version

subheader "Install Ruby Version"

CONFIGURE_OPTS="--disable-install-doc --with-readline-dir=$(brew --prefix readline)" rbenv install $VERSION

rbenv global $VERSION
rbenv rehash

# Remove User Gems folder

rm -r ~/.gem

# Update Gems

subheader "Update Gems"

gem update --no-ri --no-rdo --system
gem update --no-ri --no-rdo
gem clean