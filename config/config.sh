#!/usr/bin/env bash

# Config
# Defines what scripts to run through the bootstrap
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe

# Variables
CURRENT_DIR=`pwd`
RECIPES="$BASH_PATH"/recipes
DOTFILES="$BASH_PATH"/dotfiles
COMPUTER_NAME="DryKISS"

# Array of Script to Run
# gcc           # Checks that XCode is installed
# dotfiles      # Copy the dotfiles to the users home directory
# homebrew      # Installs homebrew
# ruby          # Installs an Ruby version control package
# zsh           # ZSH is a better terminal
# oh-my-zsh     # Add some sugar for terminal operations - install code fonts
# node			# NVM Node version manager is required for NPM package manager
# sublime       # Symlink sublime from Dropbox
# ssh           # Copy SSH from dropbox to .ssh
# mysql         # Instal MySQL
# php           # Install PHP
# itunes        # SymLink Itunes from Dropbox
# hosts         # Update the systems host records
# osx           # Process some OSX defaults
# filesystem    # Setup local files and folders
# apache        # Web server
#
# Casks
# 1password     # Installed from App Store
# firefox       # Browser
# google-chrome # Browser
# sublime       # Text editor
# skype         # Communication
# tunnelblick   # VPN Client
# utorrent      # Torrent downloading
# virtual-box   # Required for IE Vms

SCRIPTS=(gcc homebrew zsh oh-my-zsh dotfiles ruby node filesystem ssh google-chrome sublime tunnelblick utorrent virtual-box skype)
