#!/usr/bin/env bash

# Virtual Box
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe
#
# @see https://www.virtualbox.org/

header "Install Virtual Box"

log "Continue (y/Y)"
read VBOX_CONTINE

if [[ $VBOX_CONTINE == y || $VBOX_CONTINE == Y ]] ; then
  brew cask install virtualbox
fi
