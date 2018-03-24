#!/usr/bin/env bash

# ZSH Recipe
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe

header "ZSH shell"

# Ask For Input
read -p "Continue (y/Y) " -n 1 -r

# Check Response
if [[ $REPLY =~ ^[Yy]$ ]]
then
  # May need to create the .zsh file first so we can source this

  # Install ZSH
  subheader "Brew Install ZSH"
  brew update && brew install zsh

  # Set the default shell
  subheader "Set default shell to ZSH"
  sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh

  # Restart
  subheader "Really need to restart the terminal here"

fi
