#!/usr/bin/env bash

# Docker
#
# @usage docker run hello-world
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe
#
# @todo Download some common images and store them
# @todo Make sure the cask is updated before download - brew update or other

header 'Docker'

log "Continue (y/Y)"
read DOCKER_CONTINE

if [[ $DOCKER_CONTINE == y || $DOCKER_CONTINE == Y ]] ; then

  # Symlink in the library folder
  brew cask install docker

fi
