#!/usr/bin/env bash

# ImageOptim
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe
#
# @see https://www.skype.com/en/

header "ImageOptim"

# Ask For Input
read -p "Continue (y/Y) " -n 1 -r

# Check Response
if [[ $REPLY =~ ^[Yy]$ ]]
then
  brew cask install imageoptim
fi
