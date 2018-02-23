#!/usr/bin/env bash

# Transmit
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe
#
# @see https://www.skype.com/en/

header "Install Transmit"

log "Continue (y/Y)"
read TRANSMIT_CONTINE

if [[ $TRANSMIT_CONTINE == y || $TRANSMIT_CONTINE == Y ]] ; then
  brew cask install transmit4
fi
