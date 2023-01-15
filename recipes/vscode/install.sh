#!/usr/bin/env bash
# @see https://code.visualstudio.com/

header "Visual Studio Code"

read -p "Continue (y/Y) " -n 1 -r

if [[ $REPLY =~ ^[Yy]$ ]]
then
  brew install --cask visual-studio-code
fi
