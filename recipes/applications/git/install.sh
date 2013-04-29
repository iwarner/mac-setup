#!/usr/bin/env bash

######################################################################
#                                                                    #
# Git Recipe                                                         #
#                                                                    #
######################################################################

header "Installing GIT"

subheader "Check if GIT is Installed"

GIT_PATH=$(which git 2>&1)

if [[ "$GIT_PATH" != '/usr/local/bin/git' ]] ; then

    log "Brew install Git"
    brew install git

    log "Test that Git is now on the correct path"
    which git

else
    log "-e \\t Git already Installed" true
fi

subheader "Copy .gitconfig"

cp "$BASH_PATH"/dotfiles/.gitconfig ~/.gitconfig