#!/usr/bin/env bash

header "Slack"

read -p "Continue (y/Y) " -n 1 -r

if [[ $REPLY =~ ^[Yy]$ ]]
then
  brew install --cask slack
fi
