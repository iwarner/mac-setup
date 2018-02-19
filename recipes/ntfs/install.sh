#!/usr/bin/env bash

# NTFS
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe
#
# @see https://gist.github.com/bjorgvino/f24e5c079b92f921b765

header "Install NTFS"

log "Continue (y/Y)"
read NTFS_CONTINE

if [[ $NTFS_CONTINE == y || $NTFS_CONTINE == Y ]] ; then

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
