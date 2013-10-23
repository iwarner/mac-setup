#!/usr/bin/env bash

######################################################################
#                                                                    #
# Gems                                                               #
# This will install Gems                                             #
#                                                                    #                                                                    #                                                                    #
######################################################################

header "Install required Gems"

subheader "Copy .gemrc"

cp "$BASH_PATH"/dotfiles/.gemrc ~/.gemrc

subheader "Check bundler is installed"

if ! has bundle ; then
    log "Install Bundler Gem"
    gem install --no-ri --no-rdo bundler
else
    log "-e \\tGem Bundle already installed" true
fi

subheader "Clean Gems"
gem clean