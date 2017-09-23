#!/usr/bin/env bash

# ZSH Recipe

header "Install ZSH shell"

log "Continue (y/Y)"
read ZSH_CONTINE

if [[ $ZSH_CONTINE == y || $ZSH_CONTINE == Y ]] ; then

  subheader "Brew Install ZSH"
  brew update && brew install zsh

  # Set the default shell
  subheader "Set default shell to ZSH"
  sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh

  #
  subheader "Really need to restart the terminal here"

fi
