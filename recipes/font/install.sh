#!/usr/bin/env bash

# Fonts
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe

header "Install Fonts"

log "Continue (y/Y)"
read FONT_CONTINE

if [[ $FONT_CONTINE == y || $FONT_CONTINE == Y ]] ; then
  brew tap caskroom/fonts
  brew cask install font-inconsolata
fi
