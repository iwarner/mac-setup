#!/usr/bin/env bash

header "Dock"

read -p "Continue (y/Y) " -n 1 -r

if [[ $REPLY =~ ^[Yy]$ ]]
then
  dockutil --no-restart --remove all
  dockutil --no-restart --add "/Applications/Utilities/Terminal.app"
  dockutil --no-restart --add "/Applications/Google Chrome.app"
  dockutil --no-restart --add "/Applications/Visual Studio Code.app"

  killall Dock
fi
