#!/usr/bin/env bash

######################################################################
#                                                                    #
# ZSH Recipe                                                         #
#                                                                    #
######################################################################

header "Instal ZSH Shell"

brew update
brew install zsh

# Set the default shell

chsh -s /usr/local/bin/zsh $USER
