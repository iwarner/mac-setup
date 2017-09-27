#!/usr/bin/env bash

# Dotfiles
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe

header 'Installing Dotfiles'

log "Continue (y/Y)"
read DOTFILE_CONTINE

if [[ $DOTFILE_CONTINE == y || $DOTFILE_CONTINE == Y ]] ; then

  subheader "Overwrite ~/.zshrc and ~/.zprofile files"

  cp "$DOTFILES"/.zshrc ~/.zshrc
  cp "$DOTFILES"/.zprofile ~/.zprofile

  subheader "Delete BASH files"

  if [-f ~/.bash_history] ; then
    rm ~/.bash_history
  fi

  if [-f ~/.bash_profile] ; then
    rm ~/.bash_profile
  fi

  if [-f ~/.bashrc] ; then
    rm ~/.bashrc
  fi

  subheader "Copy dotfiles to user root"

  cp "$DOTFILES"/.exports ~/.exports
  cp "$DOTFILES"/.functions ~/.functions

  subheader "Copy .gemrc"

  cp "$DOTFILES"/.gemrc ~/.gemrc

  subheader "Copy .gitconfig"

  cp "$DOTFILES"/.gitconfig ~/.gitconfig
  cp "$DOTFILES"/.gitignore_global ~/.gitignore_global

fi
