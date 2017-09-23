#!/usr/bin/env bash

# Config
# Defines what scripts to run through the bootstrap

# Variables
CURRENT_DIR=`pwd`
RECIPES="$BASH_PATH"/recipes
DOTFILES="$BASH_PATH"/dotfiles

# Array of Script to Run
# gcc           # Checks that XCode is installed
# dotfiles      # Copy the dotfiles to the users home directory
# homebrew      # Installs homebrew
# ruby          # Installs an Ruby version control package
# zsh           # ZSH is a better terminal
# oh_my_zsh     # Add some sugar for terminal operations - install code fonts
# node			    # NVM Node version manager is required for NPM package manager
# sublime_text  # Symlink sublime from Dropbox
# ssh           # Copy SSH from dropbox to .ssh
# mysql         # Instal MySQL
# php           # Install PHP
# itunes        # SymLink Itunes from Dropbox
# hosts         # Update the systems host records
# osx           # Process some OSX defaults
# filesystem    #
# apache        #
#
# Casks
# 1password     # Installed from App Store
# google-chrome
# sublime
# skype
# firefox
# utorrent

SCRIPTS=(gcc homebrew zsh oh_my_zsh dotfiles ruby node google-chrome filesystem ssh sublime utorrent)

# OSX Settings
COMPUTER_NAME="DryKISS"
