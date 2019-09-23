#!/usr/bin/env bash
# @see http://brew.sh
# @todo check out git https://coderwall.com/p/7aymfa/please-oh-please-use-git-pull-rebase
# @todo Set up git as a standalone recipe - has its own dotfile also

header "Homebrew"

read -p "Continue (y/Y) " -n 1 -r

if [[ $REPLY =~ ^[Yy]$ ]]
then

  if ! has brew ; then

    log "Homebrew not installed.. installing"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

    if [[ $? != 0 ]] ; then
      log "Homebrew download failed - Exiting"
      abort
    fi

    log "Change ownership of /usr/local folder"
    sudo chown -R `whoami` /usr/local

  else

    # Brew Doctor
    read -p "Run Brew Doctor? (y/Y) " -n 1 -r

    # Check Response
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
      brew doctor
    fi

  fi

  # Brew update
  read -p "Run Brew Update and Upgrade? (y/Y) " -n 1 -r

  # Check Response
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
    brew update && brew upgrade
  fi

  # Install Casks
  subheader "Brew install Casks"
  brew tap caskroom/cask || { log "Dupes already Tapped"; }

  # Install Formula
  subheader "Install Formula"

  # Install Brews
  brew install "${BREWS[@]}"

fi
