#!/usr/bin/env bash

######################################################################
#                                                                    #
# GCC Settings                                                       #
#                                                                    #
######################################################################

header "Apple GCC Installation Script"

if ! has gcc ; then

    log "GCC not installed.."
    open http://connect.apple.com

    # Should pause script here until installed
    log "Please install GCC and run this script again."

    abort

else
    log "GCC installed"
fi

log "Set X-Code Select switch to Xcode App"
sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer