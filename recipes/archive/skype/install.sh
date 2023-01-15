#!/usr/bin/env bash

header "Skype"

read -p "Continue (y/Y) " -n 1 -r

if [[ $REPLY =~ ^[Yy]$ ]]
then
  brew cask install skype
fi
