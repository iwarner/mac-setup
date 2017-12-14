#!/usr/bin/env bash

# Ruby Recipe
#
# https://github.com/sstephenson/rbenv/
#
# To use Homebrew's directories rather than ~/.rbenv add
# export RBENV_ROOT=/usr/local/var/rbenv
#
# To enable shims and autocompletion add to your profile:
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
#
# rbenv install -l
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe

# Variables
VERSION=2.4.1

# Header
header "RBENV Installation Script"

log "Continue (y/Y)"
read RBENV_CONTINE

if [[ $RBENV_CONTINE == y || $RBENV_CONTINE == Y ]] ; then

  subheader "Brew Update"
  brew update

  subheader "Install Rbenv, Rbenv Gem and Ruby Build"
  brew install rbenv ruby-build
  rbenv init

  # Install Ruby Version
  subheader "Install Ruby Version"

  # Install version
  rbenv install $VERSION

  # Set as global
  rbenv global $VERSION
  rbenv rehash

  # Remove User Gems folder
  rm -r ~/.gem

  . ~/.bashrc

  # Configure Gems
  subheader "Install Ruby Version"

  # Upgrade Gems
  gem update --no-ri --no-rdo --system
  gem update --no-ri --no-rdo
  gem clean

  rbenv rehash

  gem install --no-ri --no-rdoc bundler
  gem install --no-ri --no-rdoc thor

  rbenv rehash
fi
