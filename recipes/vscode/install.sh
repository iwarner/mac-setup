#!/usr/bin/env bash

# Visual Studio Code
# GistID 3de8f37bca0814fefb8ef8e11f3aa538
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe
#
# @see https://code.visualstudio.com/

header "Visual Studio Code"

# Ask For Input
read -p "Continue (y/Y) " -n 1 -r

# Check Response
if [[ $REPLY =~ ^[Yy]$ ]]
then
  brew cask install visual-studio-code
fi
