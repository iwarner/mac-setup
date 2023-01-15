#!/usr/bin/env bash

header "Sketch"

read -p "Continue (y/Y) " -n 1 -r

if [[ $REPLY =~ ^[Yy]$ ]]
then
  brew cask install sketch
fi
