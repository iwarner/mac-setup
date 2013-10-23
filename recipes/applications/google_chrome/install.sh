#!/usr/bin/env bash

######################################################################
#                                                                    #
# Google Chrome Recipe                                               #
#                                                                    #
######################################################################

header "Installing Google Chrome"

if [ ! -f "tmp/googlechrome.dmg" ] ; then
    log "Download"
    cd tmp > /dev/null; curl "$GOOGLE_CHROME_URL" > "googlechrome.dmg"
else
    log "Already Downloaded"
fi

subheader "Mount Application"

if [ ! -d "/Applications/Google Chrome.app" ] ; then

    mount "tmp/googlechrome.dmg" "/Volumes/Google Chrome/Google Chrome.app" "/Volumes/Google Chrome/"

else
    log "Already Installed"
fi