#!/usr/bin/env bash

# Skype
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe
#
# @see https://www.skype.com/en/

header "Install Skype"

log "Continue (y/Y)"
read SKYPE_CONTINE

if [[ $SKYPE_CONTINE == y || $SKYPE_CONTINE == Y ]] ; then
  brew cask install skype
fi
