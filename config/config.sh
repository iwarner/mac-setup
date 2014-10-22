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
# homebrew
# git
# rbenv
# zsh
# oh_my_zsh
# exports
# sublime_text
# ssh
# mysql
# php
# itunes
# gems
# node
# hosts
# osx

SCRIPTS=( gcc homebrew git rbenv zsh oh_my_zsh exports sublime_text ssh itunes gems node )

# OSX Settings
COMPUTER_NAME="DryKISS"