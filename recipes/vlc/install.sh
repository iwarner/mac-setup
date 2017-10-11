#!/usr/bin/env bash

# VLC
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe
#
# @see https://www.videolan.org/index.html

header "Install VLC"

log "Continue (y/Y)"
read VLC_CONTINE

if [[ $VLC_CONTINE == y || $VLC_CONTINE == Y ]] ; then
  brew cask install vlc
fi
