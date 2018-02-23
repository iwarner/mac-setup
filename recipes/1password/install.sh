#!/usr/bin/env bash

# 1Password
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe

header "Install 1Password"

log "Continue (y/Y)"
read PASSWORD_CONTINE

if [[ $PASSWORD_CONTINE == y || $PASSWORD_CONTINE == Y ]] ; then
  brew cask install 1password
fi
