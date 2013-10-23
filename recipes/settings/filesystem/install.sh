#!/usr/bin/env bash

######################################################################
#                                                                    #
# File System Setup                                                  #
#                                                                    #
######################################################################

header "File System Setup"

# Create comtainer folder
sudo mkdir -p /var/www

# Create the correct permissions
sudo chown -R `whoami`:staff /var/www
sudo chmod -R 0755 /var/www

# Symlink in the Library folder
ln -s ~/Dropbox/www/library /var/www/Library