#!/usr/bin/env bash

# Fonts
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe

header "Fonts"

# Ask For Input
read -p "Continue (y/Y) " -n 1 -r

# Check Response
if [[ $REPLY =~ ^[Yy]$ ]]
then
  brew tap caskroom/fonts
  brew cask install "${FONTS[@]}"
fi
