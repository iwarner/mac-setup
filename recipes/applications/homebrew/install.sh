#!/usr/bin/env bash

######################################################################
#                                                                    #
# HomeBrew Recipe                                                    #
#                                                                    #
# https://github.com/mxcl/homebrew/wiki                              #
# http://mxcl.github.com/homebrew/                                   #
#                                                                    #
# TODO: Need to check that the URL returned 200                      #
#                                                                    #
######################################################################

header "HomeBrew Installation Script"

if ! has brew ; then

    log "Homebrew not installed.. installing"
    ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

    if [[ $? != 0 ]]
    then
        log "Homebrew download failed - Exiting"
        abort
    fi

    log "Change ownership of /usr/local folder"
    sudo chown -R `whoami` /usr/local

    log "Reload Source"
    source ~/.bashrc
    source ~/.zshrc

else
    log "Homebrew installed"

    log "Run Brew Doctor? (y/Y)"
    read BREW_DOCTOR

    if [[ $BREW_DOCTOR == y || $BREW_DOCTOR == Y ]] ; then
        brew doctor
    fi
fi

log "Run Brew Update and Upgrade? (y/Y)"
read BREW_UPDATE

if [[ $BREW_UPDATE == y || $BREW_UPDATE == Y ]] ; then

    log "Brew Update and Upgrade"
    brew update && brew upgrade

fi

log "Brew Install Dupes"
brew tap homebrew/dupes || { log "Dupes already Tapped"; }
