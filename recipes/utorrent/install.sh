#!/usr/bin/env bash

# uTorrent
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe

header "Install uTorrent"

log "Continue (y/Y)"
read UTORRENT_CONTINE

if [[ $UTORRENT_CONTINE == y || $UTORRENT_CONTINE == Y ]] ; then
  brew cask install utorrent
fi
