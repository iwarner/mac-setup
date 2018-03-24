#!/usr/bin/env bash

# Sketch
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe
#
# @see https://www.sketchapp.com/

header "Sketch"

# Ask For Input
read -p "Continue (y/Y) " -n 1 -r

# Check Response
if [[ $REPLY =~ ^[Yy]$ ]]
then
  brew cask install sketch
fi
