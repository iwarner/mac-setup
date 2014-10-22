#!/usr/bin/env bash

######################################################################
#                                                                    #
# iTunes Symlink                                                     #
#                                                                    #
######################################################################

header "ITunes Symlink"

log "Continue (y/Y)"
read ITUNES_CONTINE

if [[ $ITUNES_CONTINE == y || $ITUNES_CONTINE == Y ]] ; then

    subheader "Remove User Default ITunes Folder"

    if [ -d ~/Music/ITunes ] ; then
        sudo rm -r ~/Music/Itunes
    fi

    subheader "Link ITunes"

    if [ ! -f ~/Music/ITunes ] ; then
        ln -s ~/Google\ Drive/Personal/ITunes ~/Music/ITunes
    fi

fi