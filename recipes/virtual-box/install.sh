#!/usr/bin/env bash

# Virtual Box
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe
#
# @see https://www.virtualbox.org/

header "Virtual Box"

# Ask For Input
read -p "Continue (y/Y) " -n 1 -r

# Check Response
if [[ $REPLY =~ ^[Yy]$ ]]
then
  brew cask install virtualbox
fi
