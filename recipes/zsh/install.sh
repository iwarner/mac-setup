#!/usr/bin/env bash

######################################################################
#                                                                    #
# ZSH Recipe                                                         #
#                                                                    #
######################################################################

header "Install ZSH Shell"

log "Continue (y/Y)"
read ZSH_CONTINE

if [[ $ZSH_CONTINE == y || $ZSH_CONTINE == Y ]] ; then

    subheader "Brew Install ZSH"
    brew update && brew install zsh

    # Set the default shell
    subheader "Set default shell to ZSH"
    chsh -s /usr/local/bin/zsh $USER

fi

source ~/.bash_profile