#!/usr/bin/env bash

######################################################################
#                                                                    #
# Tide SDK Settings                                                  #
#                                                                    #
######################################################################

header "Tide SDK Configuration"

log "Symlink tidebuilder to /usr/bin"

ln -s ~/Library/Application\ Support/TideSDK/sdk/osx/1.3.1-beta/tidebuilder.py /usr/bin
