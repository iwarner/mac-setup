#!/usr/bin/env bash

# 1Password
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe

header "1Password"

# Ask For Input
read -p "Continue (y/Y) " -n 1 -r

# Check Response
if [[ $REPLY =~ ^[Yy]$ ]]
then
  brew cask install 1password
fi
