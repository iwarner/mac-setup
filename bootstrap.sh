#!/usr/bin/env bash

# Create required setup for this machine
#
# cd   ~/Google\ Drive/Service\ Files/Server\ Local/Setup
# bash ~/Google\ Drive/Service\ Files/Server\ Local/Setup/bootstrap.sh
# https://gist.github.com/g3d/2709563
# http://www.tldp.org/LDP/Bash-Beginners-Guide/html/Bash-Beginners-Guide.html
# Options
# set -u
# set -e
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe

# Clear
clear

# Export
export BASH_PATH

# Path
BASH_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Include Config
. "${BASH_PATH}/lib/config.sh"

# Include Functions
. "${BASH_PATH}/lib/functions.sh"

# Welcome Message
hello "Setup Script" "This will set up the necessary software for MAC OSX Development"

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Ask For Input
read -p "Continue (y/Y) " -n 1 -r

# Check Response
if [[ $REPLY =~ ^[Yy]$ ]]
then

  # Loop through the Scripts array
  for i in "${SCRIPTS[@]}"; do
    . "$RECIPES/$i/install.sh"
  done

  # Exit Script
  log "-e \\n"
  abort

fi
