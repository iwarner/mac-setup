#!/usr/bin/env bash

header "Apple GCC"

if ! has gcc ; then

  log "GCC not installed.."
  open http://connect.apple.com

  # Should pause script here until installed
  log "Please install GCC and run this script again."

else
  log "GCC installed"
fi

# log "Set XCode select switch to Xcode App"
# sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer

if ! has xcode-select ; then
  log "Install command line tools"
  xcode-select --install
fi
