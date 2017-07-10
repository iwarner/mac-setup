#!/usr/bin/env bash

################################################################################
#                                                                              #
# File system set up                                                           #
#                                                                              #
################################################################################

header "File system set up"

log "Continue (y/Y)"
read FILE_CONTINE

if [[ $FILE_CONTINE == y || $FILE_CONTINE == Y ]] ; then

    # Symlink in the library folder
    sudo ln -s ~/Dropbox/www /var/

fi
