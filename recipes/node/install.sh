#!/usr/bin/env bash

######################################################################
#                                                                    #
# Node                                                               #
# This will also install NPM                                         #
#                                                                    #
# @see http://nodejs.org/                                            #
#                                                                    #
######################################################################

# Uninstall
# http://stackoverflow.com/questions/11177954/how-do-i-completely-uninstall-node-js-and-reinstall-from-beginning-mac-os-x
# http://dreamerslab.com/blog/en/how-to-setup-a-node-js-development-environment-on-mac-osx-lion/

header "Install Node & NPM"

log "Continue (y/Y)"
read NODE_CONTINE

if [[ $NODE_CONTINE == y || $NODE_CONTINE == Y ]] ; then

    # Install NVM
    curl https://raw.githubusercontent.com/creationix/nvm/v0.17.2/install.sh | bash

    source ~/.zshrc

    # Install Node
    nvm install 0.11
    nvm use 0.11
    nvm alias default 0.11

    # Install Bower
    npm install -g bower

fi