#!/usr/bin/env bash

# Visual Studio Code
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe
#
# @see https://code.visualstudio.com/

header "Install Visual Studio Code"

log "Continue (y/Y)"
read VSCODE_CONTINE

if [[ $VSCODE_CONTINE == y || $VSCODE_CONTINE == Y ]] ; then
  brew cask install visual-studio-code
fi
