#!/usr/bin/env bash
# @see http://www.dwmkerr.com/learn-docker-by-building-a-microservice/

header 'Docker'

read -p "Continue (y/Y) " -n 1 -r

if [[ $REPLY =~ ^[Yy]$ ]]
then
  brew cask install docker
fi
