#!/usr/bin/env bash

######################################################################
#                                                                    #
# iTunes Symlink                                                     #
#                                                                    #                                                                    #
######################################################################

header "ITunes Symlink"

subheader "Remove User Default ITunes Folder"

if [ -d ~/Music/ITunes ] ; then
    sudo rm -r ~/Music/Itunes
fi

subheader "Link ITunes from Dropbox"

if [ ! -f ~/Music/ITunes ] ; then
    ln -s ~/Dropbox/Personal/ITunes ~/Music/ITunes
fi