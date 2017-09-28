#!/usr/bin/env bash

# Sketch
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe
#
# @see https://www.sketchapp.com/

header "Install Sketch"

log "Continue (y/Y)"
read SKETCH_CONTINE

if [[ $SKETCH_CONTINE == y || $SKETCH_CONTINE == Y ]] ; then
  brew cask install sketch
fi
