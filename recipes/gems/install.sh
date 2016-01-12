#!/usr/bin/env bash

######################################################################
#                                                                    #
# Gems                                                               #
# This will install Gems                                             #
#                                                                    #                                                                                                                                        #
######################################################################

header "Install required Gems"

log "Continue (y/Y)"
read GEM_CONTINE

if [[ $GEM_CONTINE == y || $GEM_CONTINE == Y ]] ; then

    subheader "Check bundler is installed"

    if ! has bundle ; then

        log "Install Bundler Gem"
        gem install --no-ri --no-rdo bundler thor

    else
        log "-e \\tGem Bundle already installed" true
    fi

    # Update Gems
    subheader "Update Gems"

    gem update --no-ri --no-rdo --system
    gem update --no-ri --no-rdo
    gem clean

    rbenv rehash

fi