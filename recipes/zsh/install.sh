#!/usr/bin/env bash

header "ZSH shell"

read -p "Continue (y/Y) " -n 1 -r

if [[ $REPLY =~ ^[Yy]$ ]]
then
  # May need to create the .zsh file first so we can source this

  # Install ZSH
  subheader "Brew Install ZSH"
  brew install zsh

  # Set the default shell
  subheader "Set default shell to ZSH"
  sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh

  # Restart
  subheader "Really need to restart the terminal here"

fi
