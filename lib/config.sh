#!/usr/bin/env bash

# Config
# Defines what scripts to run through the bootstrap
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe
#
# @todo Add in the NPM / GEM  and Brew Program to install


# Variables
CURRENT_DIR=`pwd`
RECIPES="$BASH_PATH"/recipes
DOTFILES="$BASH_PATH"/dotfiles
COMPUTER_NAME="DryKISS"

export RUBY_VERSION=2.4.1

SCRIPTS=(
  gcc            # Checks that XCode is installed
  homebrew       # Installs homebrew
  font           # Install system fonts
  zsh            # ZSH is a better terminal
  oh-my-zsh      # Add some sugar for terminal operations - install code fonts
  dock           # Configure the Mac
  dotfiles       # Copy the dotfiles to the users home directory
  ruby           # Installs an Ruby version control package
  node           # NVM Node version manager is required for NPM package manager
  ssh            # Copy SSH from dropbox to .ssh
  1password      # Installed from App Store
  appcleaner     # App Cleaner removes unwanted applications
  avg            # AVG Antivirus
  google-chrome  # Browser
  imageoptim     # Image compression
  sketch         # Graphics program
  skype          # Communication
  virtual-box    # Required for IE Vms
  vlc            # Media player
  vscode         # IDE
  osx            # OSX default settings
)

export GEMS=(
  bundler
  thor
)

export FONTS=(
  font-inconsolata
  font-fira-code
)

export BREWS=(
  curl
  dockutil
  git
  graphicsmagick
  imagemagick
  openssl
  wget
  wifi-password
)
