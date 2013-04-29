#!/usr/bin/env bash

######################################################################
#                                                                    #
# SSH Settings                                                       #
#                                                                    #
######################################################################

header "SSH Configuration"

log "Remove .ssh and ssh directories if they exist"

if [ -d ~/ssh ] ; then
    rm ~/ssh
fi

if [ -d ~/.ssh ] ; then
    rm -R ~/.ssh
fi

ln -s ~/Dropbox/Service\ Files/Server\ Local/SSH ~/.ssh
ln -s ~/.ssh ~/ssh
chmod -R 0700 ~/Dropbox/Service\ Files/Server\ Local/ssh/*