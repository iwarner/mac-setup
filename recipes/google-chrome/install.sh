#!/usr/bin/env bash

# Google Chrome
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe

header "Install Google Chrome"

log "Continue (y/Y)"
read CHROME_CONTINE

if [[ $CHROME_CONTINE == y || $CHROME_CONTINE == Y ]] ; then
  brew cask install google-chrome
fi
