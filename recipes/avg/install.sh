#!/usr/bin/env bash

# AVG Antivirus
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe

header "Install AVG"

log "Continue (y/Y)"
read AVG_CONTINE

if [[ $AVG_CONTINE == y || $AVG_CONTINE == Y ]] ; then
  brew cask install avg-antivirus
fi
