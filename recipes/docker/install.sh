#!/usr/bin/env bash

# Docker
#
# @usage docker run hello-world
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe
# @see http://www.dwmkerr.com/learn-docker-by-building-a-microservice/

header 'Docker'

# Ask For Input
read -p "Continue (y/Y) " -n 1 -r

# Check Response
if [[ $REPLY =~ ^[Yy]$ ]]
then
  # Symlink in the library folder
  brew cask install docker
fi
