#!/usr/bin/env bash

# Google Chrome
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe

header "Google Chrome"

# Ask For Input
read -p "Continue (y/Y) " -n 1 -r

# Check Response
if [[ $REPLY =~ ^[Yy]$ ]]
then
  brew cask install google-chrome
fi
