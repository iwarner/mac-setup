#!/usr/bin/env bash

################################################################################
#                                                                              #
# RSync                                                                        #
# Simple script to ease the pain of Syncing between two servers                #
#                                                                              #
################################################################################

# CLEAR THE SCREEN
clear
echo -e \\t "RSync"
echo -e \\t "-------------"

# User input to decide whether this should be a Dry Run or Not
echo -e \\n\\t "Dry Run? (Y/N)"
read DRYRUN

# Conditional to process the user input.
if [[ "$DRYRUN" == "Y" ]]
    then
        DRY="--dry-run"
    else
        DRY=""
fi

echo -e \\n

SOURCE=""
DEST=""
IDENTITY=""

rsync -rvte 'ssh -p 2222 -i PATH' --perms --compress --delete --exclude=".*" --exclude="error.log" $DRY \
    $SOURCE \
    $DEST
