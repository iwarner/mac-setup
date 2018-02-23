#!/usr/bin/env bash

# App Cleaner
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe

header "Install App Cleaner"

log "Continue (y/Y)"
read APPCLEANER_CONTINE

if [[ $APPCLEANER_CONTINE == y || $APPCLEANER_CONTINE == Y ]] ; then
  brew cask install appcleaner
fi
