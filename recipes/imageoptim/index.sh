#!/usr/bin/env bash

# ImageOptim
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe
#
# @see https://www.skype.com/en/

header "Install ImageOptim"

log "Continue (y/Y)"
read IMAGEOPTIM_CONTINE

if [[ $IMAGEOPTIM_CONTINE == y || $IMAGEOPTIM_CONTINE == Y ]] ; then
  brew cask install imageoptim
fi
