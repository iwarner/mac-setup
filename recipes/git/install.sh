#!/usr/bin/env bash

######################################################################
#                                                                    #
# Git                                                                #
#                                                                    #
# http://git-scm.com/                                                #
#                                                                    #
######################################################################

header "Installing GIT"

log "Continue (y/Y)"
read GIT_CONTINE

if [[ $GIT_CONTINE == y || $GIT_CONTINE == Y ]] ; then

    subheader "Check if HomeBrew GIT is Installed"

    GIT_PATH=$(which git 2>&1)

    if [[ "$GIT_PATH" != '/usr/local/bin/git' ]] ; then

        log "Brew install Git"
        brew install git

        log "Test that Git is now on the correct path"
        which git

    else
        log "Git already Installed" true
    fi

    subheader "Copy .gitconfig"

    cp "$DOTFILES"/.gitconfig ~/.gitconfig

fi

# Check if file exists first
# source ~/.bash_profile