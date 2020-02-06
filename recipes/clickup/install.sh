#!/usr/bin/env bash

header "Clickup"

read -p "Continue (y/Y) " -n 1 -r

if [[ $REPLY =~ ^[Yy]$ ]]
then
  brew cask install clickup
fi
