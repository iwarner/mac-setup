#!/usr/bin/env bash

######################################################################
#                                                                    #
# Hosts File                                                         #
#                                                                    #                                                                    #
######################################################################

header "HOST File Link"

# SYMLINK THE HOSTS FILE
# CHECK THAT IT IS NOT ALREADY SYMLINKED
# -rw-r--r-- 1 root wheel 236 Aug 12 22:54 hosts

if [[ ! -L /etc/hosts ]] ; then
    message "SymLink the Hosts file | Backup | Move | SymLink"
    sudo mkdir -p ~/Dropbox/Service_Files/HostsFile
    sudo cp /etc/hosts /etc/hosts.bk
    sudo mv /etc/hosts ~/Dropbox/Service_Files/HostsFile/hosts
    sudo ln -s ~/Dropbox/Service_Files/HostsFile/hosts /etc
    sudo chmod 0644 ~/Dropbox/Service_Files/HostsFile/hosts
    sudo chmod 0644 /etc/hosts
    sudo chown root:wheel ~/Dropbox/Service_Files/HostsFile/hosts
fi