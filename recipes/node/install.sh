#!/usr/bin/env bash

# Uninstall
# http://stackoverflow.com/questions/11177954/how-do-i-completely-uninstall-node-js-and-reinstall-from-beginning-mac-os-x
# http://dreamerslab.com/blog/en/how-to-setup-a-node-js-development-environment-on-mac-osx-lion/
#
# @see http://nodejs.org/

header "Node & NPM"

read -p "Continue (y/Y) " -n 1 -r

if [[ $REPLY =~ ^[Yy]$ ]]
then
  # Install NVM - follow the caveats
  brew install nvm

  mkdir ~/.nvm

  # Source
  source ~/.zshrc
  source ~/.nvm/nvm.sh

  # Install Node
  nvm install --lts
  nvm use --lts
  nvm alias default --lts

  # Set NPM User
  # https://gist.github.com/coolaj86/1318304
  npm set init.author.name  "Ian Warner"
  npm set init.author.email "ian.warner@drykiss.com"
  npm set init.author.url   "https://drykiss.com"

  npm adduser
fi
