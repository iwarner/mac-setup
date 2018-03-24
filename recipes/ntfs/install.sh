#!/usr/bin/env bash

# NTFS
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe
#
# @see https://gist.github.com/bjorgvino/f24e5c079b92f921b765

header "NTFS"

# Ask For Input
read -p "Continue (y/Y) " -n 1 -r

# Check Response
if [[ $REPLY =~ ^[Yy]$ ]]
then
  # Uninstall
  brew uninstall osxfuse
  brew uninstall ntfs-3g

  # Update
  brew update

  # Install
  brew cask install osxfuse
  brew install ntfs-3g

  # Rebooted and pressed Command + R, then from Terminal
  # ran csrutil disable
  # sudo mv /sbin/mount_ntfs /sbin/mount_ntfs.original
  # sudo ln -s /usr/local/sbin/mount_ntfs /sbin/mount_ntfs
  # ls -l /sbin/mount_ntfs*
fi
