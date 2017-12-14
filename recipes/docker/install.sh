#!/usr/bin/env bash

# Docker
#
# @usage docker run hello-world
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe
# @see http://www.dwmkerr.com/learn-docker-by-building-a-microservice/

header 'Docker'

log "Continue (y/Y)"
read DOCKER_CONTINE

if [[ $DOCKER_CONTINE == y || $DOCKER_CONTINE == Y ]] ; then

  # Symlink in the library folder
  brew cask install docker

fi
