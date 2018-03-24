#!/usr/bin/env bash

# Sublime Text Recipe
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe

# Header
header "Sublime"

# Ask For Input
read -p "Continue (y/Y) " -n 1 -r

# Check Response
if [[ $REPLY =~ ^[Yy]$ ]]
then

  # Install Sublime
  brew cask install sublime-text

  # Check local Sublime folder exists then remove
  if [ -d ~/Library/Application\ Support/Sublime\ Text\ 3 ] ; then
    rm -r ~/Library/Application\ Support/Sublime\ Text\ 3
  fi

  # Symlink folder
  ln -s ~/DryKISS/Service\ Files/Sublime\ Text\ 3 ~/Library/Application\ Support/Sublime\ Text\ 3

  # Symlink snippets into codeblender.net
  # /Users/ianwarner/Dropbox/Service Files/Sublime Snippets
  mkdir ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/CodeBlender/
  ln -s ~/DryKISS/s/sublime-3/snippets ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/CodeBlender

  # Install linter dependancies

  # Annotations : https://github.com/SublimeLinter/SublimeLinter-annotations
  # N/A

  # Coffee Script : https://github.com/SublimeLinter/SublimeLinter-coffee
  # npm install -g coffee-script

  # CSS Linter : https://github.com/SublimeLinter/SublimeLinter-csslint
  # npm install -g csslint
  npm install -g sass-lint

  # HAML : https://github.com/SublimeLinter/SublimeLinter-haml
  # gem install haml

  # JSHINT : https://github.com/SublimeLinter/SublimeLinter-jshint
  # npm install -g jshint

  # PHP : https://github.com/SublimeLinter/SublimeLinter-php
  # Install PHP

  # PUG
  # @see https://github.com/benedfit/SublimeLinter-contrib-pug-lint
  # npm install -g pug-lint

  # HTML Tidy : https://github.com/SublimeLinter/SublimeLinter-html-tidy
  # brew install tidy-html5

fi
