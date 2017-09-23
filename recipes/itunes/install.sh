#!/usr/bin/env bash

# iTunes Symlink

header "ITunes symlink"

log "Continue (y/Y)"
read ITUNES_CONTINE

if [[ $ITUNES_CONTINE == y || $ITUNES_CONTINE == Y ]] ; then

  subheader "Remove user Default ITunes folder"

  if [ -d ~/Music/ITunes ] ; then
    sudo rm -r ~/Music/Itunes
  fi

  subheader "Link ITunes"

  if [ ! -f ~/Music/ITunes ] ; then
    ln -s ~/Dropbox/Personal/ITunes ~/Music/ITunes
  fi

fi
