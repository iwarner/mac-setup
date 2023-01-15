#!/usr/bin/env bash

header "Fonts"

read -p "Continue (y/Y) " -n 1 -r

if [[ $REPLY =~ ^[Yy]$ ]]
then
  brew install --cask "${FONTS[@]}"
fi
