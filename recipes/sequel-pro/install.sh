#!/usr/bin/env bash

# Sequel Pro
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe

header "Install Sequel Pro"

log "Continue (y/Y)"
read SEQUEL_CONTINE

if [[ $SEQUEL_CONTINE == y || $SEQUEL_CONTINE == Y ]] ; then
  brew cask install sequel-pro
fi
