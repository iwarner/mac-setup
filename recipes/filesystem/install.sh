#!/usr/bin/env bash

# File system set up
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe

header "File System"

# Ask For Input
read -p "Continue (y/Y) " -n 1 -r

# Check Response
if [[ $REPLY =~ ^[Yy]$ ]]
then
  # Symlink in the library folder
  sudo ln -s ~/DryKISS/www /var/
fi
