#!/usr/bin/env bash

######################################################################
#                                                                    #
# Hosts File                                                         #
#                                                                    #                                                                    #
######################################################################

header "HOST File Link"

subheader "Replace current hosts file"

# Backup current hosts files

sudo mv /etc/hosts /etc/hosts.bk

# Backup current hosts files

sudo cp "$BASH_PATH"/dotfiles/hosts /etc/hosts

sudo chmod 0644 /etc/hosts
sudo chown root:wheel /etc/hosts