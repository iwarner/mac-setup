#!/usr/bin/env bash

header "App Cleaner"

read -p "Continue (y/Y) " -n 1 -r

if [[ $REPLY =~ ^[Yy]$ ]]
then
  brew cask install appcleaner
fi
