#!/usr/bin/env bash
# @see https://www.skype.com/en/

header "ImageOptim"

read -p "Continue (y/Y) " -n 1 -r

if [[ $REPLY =~ ^[Yy]$ ]]
then
  brew install imageoptim --cask
fi
