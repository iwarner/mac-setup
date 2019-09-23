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
# VERSION=2.4.1

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

  . ~/.bashrc

  # Configure Gems
  subheader "Install Ruby Version"

  # Upgrade Gems
  gem update --no-ri --no-rdo --system
  gem update --no-ri --no-rdo
  gem clean

  rbenv rehash

  gem install --no-ri --no-rdoc "${GEMS[@]}"

  rbenv rehash
fi
