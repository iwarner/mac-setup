#!/usr/bin/env bash

######################################################################
#                                                                    #
# PHP Recipe                                                         #
# https://github.com/josegonzalez/homebrew-php                       #
#                                                                    #
######################################################################

header "PHP Installation Script"

brew update
brew tap josegonzalez/homebrew-php
brew install php54
brew install php54-apc
brew install php54-mcrypt
