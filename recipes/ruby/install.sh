#!/usr/bin/env bash

# https://github.com/sstephenson/rbenv/
#
# To use Homebrew's directories rather than ~/.rbenv add
# export RBENV_ROOT=/usr/local/var/rbenv
#
# To enable shims and autocompletion add to your profile:
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
#
# rbenv install -l

# Variables
# VERSION=2.5.0

header "Ruby"

read -p "Continue (y/Y) " -n 1 -r

if [[ $REPLY =~ ^[Yy]$ ]]
then

  subheader "Brew Update"
  brew update

  subheader "Install Rbenv, Rbenv Gem and Ruby Build"
  brew install rbenv ruby-build
  rbenv init

  # Install Ruby Version
  subheader "Install Ruby Version"

  # Install version
  rbenv install $RUBY_VERSION

  # Set as global
  rbenv global $RUBY_VERSION
  rbenv rehash

  # Remove User Gems folder
  rm -r ~/.gem

  # Configure Gems
  subheader "Install Ruby Version"

  # Upgrade Gems
  gem update --system
  gem update
  gem clean

  rbenv rehash

  gem install thor
  gem install bundler

  rbenv rehash
fi
