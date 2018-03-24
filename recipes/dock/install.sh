#!/usr/bin/env bash

# Mac Dock Configuration
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe

# Header
header "Dock"

# Ask For Input
read -p "Continue (y/Y) " -n 1 -r

# Check Response
if [[ $REPLY =~ ^[Yy]$ ]]
then
  dockutil --no-restart --remove all
  dockutil --no-restart --add "/Applications/Utilities/Terminal.app"
  dockutil --no-restart --add "/Applications/Google Chrome.app"
  dockutil --no-restart --add "/Applications/Visual Studio Code.app"

  killall Dock
fi
