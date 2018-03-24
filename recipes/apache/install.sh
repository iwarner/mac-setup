#!/usr/bin/env bash

# Apache
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe
#
# @see https://github.com/humanmade/hm-dev/wiki/Setup-a-local-dev-environment-on-Mac-OSX-Lion

header "Apache"

# Ask For Input
read -p "Continue (y/Y) " -n 1 -r

# Check Response
if [[ $REPLY =~ ^[Yy]$ ]]
then
  brew install apache
fi
