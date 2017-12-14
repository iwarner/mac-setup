#!/usr/bin/env bash

# Apache
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe
#
# @see https://github.com/humanmade/hm-dev/wiki/Setup-a-local-dev-environment-on-Mac-OSX-Lion

header "Installing Apache"

log "Continue (y/Y)"
read APACHE_CONTINE

if [[ $APACHE_CONTINE == y || $APACHE_CONTINE == Y ]] ; then
  brew install apache
fi
