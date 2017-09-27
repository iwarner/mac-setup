#!/usr/bin/env bash

# Apache
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe

header "Installing Apache"

log "Continue (y/Y)"
read APACHE_CONTINE

if [[ $APACHE_CONTINE == y || $APACHE_CONTINE == Y ]] ; then
  brew install apache
fi
