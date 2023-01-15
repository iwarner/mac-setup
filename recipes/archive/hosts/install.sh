#!/usr/bin/env bash

header "HOST File"

subheader "Replace current hosts file"

# Backup current hosts files
sudo mv /etc/hosts /etc/hosts.bk

# Backup current hosts files
sudo cp "$DOTFILES"/hosts /etc/hosts

sudo chmod 0644 /etc/hosts
sudo chown root:wheel /etc/hosts
