#!/usr/bin/env bash

######################################################################
#                                                                    #
# DMG Functions                                                      #
#                                                                    #
######################################################################

# Mount Application

function mount ()
{
    log "Mount Downloaded Application"
    hdiutil mount -quiet "$1"

    log "Copy to /Applications"
    sudo cp -R "$2" /Applications

    log "Unmount"
    hdiutil unmount -quiet "$3"
}