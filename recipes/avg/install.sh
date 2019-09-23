#!/usr/bin/env bash

header "AVG Antivirus"

read -p "Continue (y/Y) " -n 1 -r

if [[ $REPLY =~ ^[Yy]$ ]]
then
  brew cask install avg-antivirus
fi
