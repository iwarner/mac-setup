#!/usr/bin/env bash

######################################################################
#                                                                    #
# Rbenv Recipe                                                       #
#                                                                    #
# https://github.com/sstephenson/rbenv/                              #
#                                                                    #
######################################################################

header "RBENV Installation Script"

subheader "Install Rbenv"

brew install rbenv
brew install rbenv-gem-rehash
brew install ruby-build
rbenv rehash

subheader "Install Ruby"

rbenv install 2.0.0-rc2
rbenv global 2.0.0-rc2
rbenv rehash

# Todo Remove all the old Gems
# ~./gems
# /Library/Ruby

subheader "Update Gems"

gem update --system
gem update
gem clean
