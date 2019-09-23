#!/usr/bin/env bash
# @see https://github.com/humanmade/hm-dev/wiki/Setup-a-local-dev-environment-on-Mac-OSX-Lion

header "Apache"

read -p "Continue (y/Y) " -n 1 -r

if [[ $REPLY =~ ^[Yy]$ ]]
then
  brew install apache
fi
