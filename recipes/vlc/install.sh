#!/usr/bin/env bash

# VLC
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe
#
# @see https://www.videolan.org/index.html

header "VLC"

# Ask For Input
read -p "Continue (y/Y) " -n 1 -r

# Check Response
if [[ $REPLY =~ ^[Yy]$ ]]
then
  brew cask install vlc
fi
