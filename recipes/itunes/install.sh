#!/usr/bin/env bash

# iTunes
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe

header "ITunes"

# Ask For Input
read -p "Continue (y/Y) " -n 1 -r

# Check Response
if [[ $REPLY =~ ^[Yy]$ ]]
then

  subheader "Remove user Default ITunes folder"

  if [ -d ~/Music/ITunes ] ; then
    sudo rm -r ~/Music/Itunes
  fi

  subheader "Link ITunes"

  if [ ! -f ~/Music/ITunes ] ; then
    ln -s ~/DryKISS/i/i-tunes ~/Music/ITunes
  fi

fi
