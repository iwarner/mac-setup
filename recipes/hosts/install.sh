#!/usr/bin/env bash

################################################################################
#                                                                              #
# Hosts File                                                                   #
# ~"/Google\ Drive/Service Files/Server Local/Setup/dotfiles/hosts"            #
#                                                                              #
################################################################################

header "HOST File Link"

subheader "Replace current hosts file"

# Backup current hosts files
sudo mv /etc/hosts /etc/hosts.bk

# Backup current hosts files
sudo cp "$DOTFILES"/hosts /etc/hosts

sudo chmod 0644 /etc/hosts
sudo chown root:wheel /etc/hosts