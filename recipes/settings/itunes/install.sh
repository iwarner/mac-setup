#!/usr/bin/env bash

######################################################################
#                                                                    #
# Hosts File                                                         #
#                                                                    #                                                                    #
######################################################################

header "ITunes Symlink"

subheader "Remove User Default ITunes Folder"

if [ -d ~/Music/ITunes ] ; then
    rm -r ~/Music/Itunes
fi

subheader "Link ITunes from Dropbox"

if [ ! -f ~/Music/ITunes ] ; then
    ln -s ~/Dropbox/Personal/ITunes ~/Music/ITunes
fi
