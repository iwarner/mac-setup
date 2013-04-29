#!/usr/bin/env bash

######################################################################
#                                                                    #
# Gems Settings                                                      #
#                                                                    #
# This will install the required Gems in ~/.gems/1.8 on a new MacOSX #
# Machine                                                            #
#                                                                    #
# Todo : Cache these                                                 #                                                                    #                                                                    #
######################################################################

header "Install required Gems for the Installation process"

# Todo should move this ahead of other gem updates like in rbenv
subheader "Copy .gemrc"

cp "$BASH_PATH"/dotfiles/.gemrc ~/.gemrc

subheader "Check bundler is installed"

if ! has bundle ; then
    log "Install Bundler Gem"
    gem install bundler
else
    log "-e \\tGem Bundle already installed" true
fi

subheader "Install Required Gems"
bundle install

subheader "Clean Gems"
gem clean
