#!/usr/bin/env bash

# Tunnelblick
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe
#
# @see https://tunnelblick.net/

header "Install Tunnelblick VPN Client"

log "Continue (y/Y)"
read TUNNELBLICK_CONTINE

if [[ $TUNNELBLICK_CONTINE == y || $TUNNELBLICK_CONTINE == Y ]] ; then
  brew cask install tunnelblick
fi
