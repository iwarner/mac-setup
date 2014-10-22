#!/usr/bin/env bash

######################################################################
#                                                                    #
# Sublime Text Recipe                                                #
#                                                                    #
# cd ~/Google\ Drive/Service_Files/Server\ Local/Setup               #
#                                                                    #
######################################################################

# Header
header "Sublime Text Configuration"

log "Continue (y/Y)"
read SUBLIME_CONTINE

if [[ $SUBLIME_CONTINE == y || $SUBLIME_CONTINE == Y ]] ; then

    # Check local Sublime folder exists then remove
    if [ -d ~/Library/Application\ Support/Sublime\ Text\ 3 ] ; then
        rm -r ~/Library/Application\ Support/Sublime\ Text\ 3
    fi

    # Symlink folder
    ln -s ~/Google\ Drive/Service\ Files/Library/Application\ Support/Sublime\ Text\ 3 ~/Library/Application\ Support/Sublime\ Text\ 3

fi