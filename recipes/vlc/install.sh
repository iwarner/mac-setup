#!/usr/bin/env bash

header "VLC"

read -p "Continue (y/Y) " -n 1 -r

if [[ $REPLY =~ ^[Yy]$ ]]
then
  brew install --cask vlc
fi
