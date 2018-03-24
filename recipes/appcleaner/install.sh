#!/usr/bin/env bash

# App Cleaner
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe

header "App Cleaner"

# Ask For Input
read -p "Continue (y/Y) " -n 1 -r

# Check Response
if [[ $REPLY =~ ^[Yy]$ ]]
then
  brew cask install appcleaner
fi
