#!/usr/bin/env bash

#######################################################################
#                                                                     #
# Exports                                                             #
#                                                                     #
#######################################################################

header "Adding Exports"

log "Continue (y/Y)"
read EXPORTS_CONTINE

if [[ $EXPORTS_CONTINE == y || $EXPORTS_CONTINE == Y ]] ; then

	subheader "Copy dotfiles to user root"

    cp "$DOTFILES"/.exports ~/.exports
    cp "$DOTFILES"/.functions ~/.functions

fi