#!/usr/bin/env bash

header 'SSH'

read -p "Continue (y/Y) " -n 1 -r

if [[ $REPLY =~ ^[Yy]$ ]]
then

  subheader 'Remove .ssh and ssh directories if they exist'

  if [ -d ~/ssh ]; then
    rm ~/ssh
  fi

  if [ -d ~/.ssh ]; then
    rm -R ~/.ssh
  fi

  # SymLink Folder and Change Permissions
  ln -s ~/Documents/s/ssh ~/.ssh
  chmod -R 0700 ~/Documents/s/ssh/*

  # Symlink ssh to .ssh
  ln -s ~/.ssh ~/ssh

fi
