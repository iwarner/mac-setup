#!/usr/bin/env bash

# AVG Antivirus
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe

header "AVG Antivirus"

# Ask For Input
read -p "Continue (y/Y) " -n 1 -r

# Check Response
if [[ $REPLY =~ ^[Yy]$ ]]
then
  brew cask install avg-antivirus
fi
