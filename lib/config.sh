#!/usr/bin/env bash

# Config
# Defines what scripts to run through the bootstrap
#
# @todo Add in the NPM / GEM  and Brew Program to install
# @todo Move application install recipes to recipes/apps

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
  # hosts          # Update hosts files
  1password      # Installed from App Store
  # apache         # Web server
  appcleaner     # App Cleaner removes unwanted applications
  avg            # AVG Antivirus
  # docker         # Container
  google-chrome  # Browser
  imageoptim     # Image compression
  mysql          # Relational database
  # ntfs         # Drive system
  # php          # Server side langauge
  postman        # API Tester
  sequel-pro     # MySQL GUi
  # sketch         # Graphics program
  skype          # Communication
  # sublime        # Text editor
  # transmit     # FTP client
  # virtual-box    # Required for IE Vms
  vlc            # Media player
  vscode         # IDE
  # osx            # OSX default settings
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
  rsync
  yarn
  wget
  wifi-password
)
