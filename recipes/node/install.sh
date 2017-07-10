#!/usr/bin/env bash

################################################################################
#                                                                              #
# Node via NVM                                                                 #
# This will also install NPM                                                   #
#                                                                              #
# @see http://nodejs.org/                                                      #
#                                                                              #
################################################################################

# Uninstall
# http://stackoverflow.com/questions/11177954/how-do-i-completely-uninstall-node-js-and-reinstall-from-beginning-mac-os-x
# http://dreamerslab.com/blog/en/how-to-setup-a-node-js-development-environment-on-mac-osx-lion/

header "Install Node & NPM"

log "Continue (y/Y)"
read NODE_CONTINE

if [[ $NODE_CONTINE == y || $NODE_CONTINE == Y ]] ; then

    # Install NVM - follow the caveats
    brew install nvm

    # Source
    source ~/.zshrc
    source ~/.nvm/nvm.sh

    # Install Node
    nvm install stable
    nvm use stable
    nvm alias default stable

    # Install Bower
    npm install -g bower

    # Set NPM User
    # https://gist.github.com/coolaj86/1318304
    npm set init.author.name  "Ian Warner"
    npm set init.author.email "ian.warner@drykiss.com"
    npm set init.author.url   "http://drykiss.com"

    npm adduser

    # Install Yarn
    brew install yarn

fi
