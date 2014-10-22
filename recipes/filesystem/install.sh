#!/usr/bin/env bash

######################################################################
#                                                                    #
# File System Setup                                                  #
#                                                                    #
######################################################################

header "File System Setup"

log "Continue (y/Y)"
read FILE_CONTINE

if [[ $FILE_CONTINE == y || $FILE_CONTINE == Y ]] ; then

    # Symlink in the Library folder
    sudo ln -s ~/Google\ Drive/www /var/

fi