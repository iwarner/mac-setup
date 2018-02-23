#!/usr/bin/env bash

# Postman
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe
# @see https://www.getpostman.com/

header "Install Postman"

log "Continue (y/Y)"
read POSTMAN_CONTINE

if [[ $POSTMAN_CONTINE == y || $POSTMAN_CONTINE == Y ]] ; then
  brew cask install postman
fi
