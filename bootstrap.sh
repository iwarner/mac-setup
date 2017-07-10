#!/usr/bin/env bash

################################################################################
#                                                                              #
# Create required setup for this machine                                       #
#                                                                              #
# cd   ~/Google\ Drive/Service\ Files/Server\ Local/Setup                      #
# bash ~/Google\ Drive/Service\ Files/Server\ Local/Setup/bootstrap.sh         #
#                                                                              #
################################################################################

# https://gist.github.com/g3d/2709563
# http://www.tldp.org/LDP/Bash-Beginners-Guide/html/Bash-Beginners-Guide.html

# Options
# set -u
# set -e

# Path
BASH_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Include Config
. "$BASH_PATH"/config/config.sh

# Include Functions
. "$BASH_PATH"/lib/functions.sh

# Welcome Message
hello "Setup Script" "This will set up the necessary software for MAC OSX Development"

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Ask user if they wish to continue
log "Continue? (y/Y)"
read CONTINUE

# Proceed if the user answered y or Y
if [[ $CONTINUE == y || $CONTINUE == Y ]] ; then

    # Loop through the Scripts array
    for i in "${SCRIPTS[@]}"; do
        . "$RECIPES/$i/install.sh"
    done

    # Exit Script
    log "-e \\n"
    abort

fi
