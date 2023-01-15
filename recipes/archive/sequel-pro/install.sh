#!/usr/bin/env bash

header "Sequel Pro"

read -p "Continue (y/Y) " -n 1 -r

if [[ $REPLY =~ ^[Yy]$ ]]
then
  brew cask install sequel-pro
fi
