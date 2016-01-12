#!/usr/bin/env bash

################################################################################
#                                                                              #
# Config                                                                       #
# Defines what scripts to run through the bootstrap                            #
#                                                                              #
################################################################################

# Variables
CURRENT_DIR=`pwd`
RECIPES="$BASH_PATH"/recipes
DOTFILES="$BASH_PATH"/dotfiles

# Array of Script to Run
# gcc
# dotfiles
# homebrew
# rbenv
# zsh
# oh_my_zsh
# sublime_text
# ssh
# mysql
# php
# itunes
# gems
# node
# hosts
# osx

SCRIPTS=( dotfiles )

# OSX Settings
COMPUTER_NAME="DryKISS"