#!/usr/bin/env bash

# Postman
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe
# @see https://www.getpostman.com/

header "Postman"

# Ask For Input
read -p "Continue (y/Y) " -n 1 -r

# Check Response
if [[ $REPLY =~ ^[Yy]$ ]]
then
  brew install --cask postman
fi
