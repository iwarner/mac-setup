#!/usr/bin/env bash

# Apache
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe
#
# @see https://github.com/humanmade/hm-dev/wiki/Setup-a-local-dev-environment-on-Mac-OSX-Lion
#
# @todo This should be created in a docker container
# @todo Create some standard conf files
# @todo PHP FPM setup
# @todo Change user and group for Apache to ones own. whoami

header "Installing Apache"

log "Continue (y/Y)"
read APACHE_CONTINE

if [[ $APACHE_CONTINE == y || $APACHE_CONTINE == Y ]] ; then
  brew install apache
fi
