#!/usr/bin/env bash

header "1Password"

read -p "Continue (y/Y) " -n 1 -r

if [[ $REPLY =~ ^[Yy]$ ]]
then
  brew install --cask 1password
fi
