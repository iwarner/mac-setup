#!/usr/bin/env bash

# SSH Settings
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe

header 'SSH configuration'

log 'Continue (y/Y)'
read SSH_CONTINE

if [[ $SSH_CONTINE == y || $SSH_CONTINE == Y ]] ; then

  subheader 'Remove .ssh and ssh directories if they exist'

  if [ -d ~/ssh ]; then
    rm ~/ssh
  fi

  if [ -d ~/.ssh ]; then
    rm -R ~/.ssh
  fi

  # SymLink Folder and Change Permissions
  ln -s ~/DryKISS/s/ssh ~/.ssh
  chmod -R 0700 ~/DryKISS/s/ssh/*

  # Symlink ssh to .ssh
  ln -s ~/.ssh ~/ssh

fi
