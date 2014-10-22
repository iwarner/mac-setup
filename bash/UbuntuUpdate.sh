#!/usr/bin/env bash

################################################################################
#                                                                              #
# Ubuntu Update                                                                #
#                                                                              #
################################################################################

# Clear the screen
clear

# Welcome Message
echo -e \\t "This Script will update and upgrade the system"
echo -e \\t "------------------------"

# Ask the user for confirmation of continuing
echo -e \\n\\t "Continue? (Y/N)"
read confirmation

if [[ "$confirmation" == "Y" || "$confirmation" == "y" ]]

    then
        echo -e \\n\\t "Updating the Repositories"
        echo -e \\t "------------------------"
        sudo apt-get update

        echo -e \\n\\t "Upgrading the Distribution"
        echo -e \\t "------------------------"
        sudo apt-get dist-upgrade

        echo -e \\n\\t "Upgrading the Packages"
        echo -e \\t "------------------------"
        sudo apt-get upgrade

        echo -e \\n\\t "Autoremoving"
        echo -e \\t "------------------------"
        sudo apt-get autoremove

        echo -e \\n\\t "Purging"
        echo -e \\t "------------------------"
        sudo apt-get purge

        echo -e \\n\\t "Autoclean"
        echo -e \\t "------------------------"
        sudo apt-get autoclean

        echo -e \\n\\t "Check"
        echo -e \\t "------------------------"
        sudo apt-get check

    else
        echo -e \\t "Exiting"
fi
