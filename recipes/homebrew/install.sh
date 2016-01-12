#!/usr/bin/env bash

######################################################################
#                                                                    #
# HomeBrew Recipe & Brew Dupes installation                          #
# During installation you may get a prompt to install the xCode      #
# command line tools                                                 #
#                                                                    #
# http://brew.sh/                                                    #
# https://github.com/mxcl/homebrew/wiki                              #
# http://mxcl.github.com/homebrew/                                   #
#                                                                    #
######################################################################

# Enable scheduled checks of brew via launchd:
# cd ~/Library/LaunchAgents
# git clone https://github.com/mkalmes/brewupdate.git
# mv brewupdate/net.mkalmes.brewupdate.plist ~/Library/LaunchAgents
# launchctl load ~/Library/LaunchAgents/net.mkalmes/brewupdate.plist
# See more at: http://www.skrinakcreative.com/2013/07/29/configuring-mac-os-x-1084-web-development#sthash.sthE2SL1.dpuf

header "HomeBrew Installation Script"

log "Continue (y/Y)"
read BREW_CONTINE

if [[ $BREW_CONTINE == y || $BREW_CONTINE == Y ]] ; then

    if ! has brew ; then

        log "Homebrew not installed.. installing"
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

        if [[ $? != 0 ]] ; then
            log "Homebrew download failed - Exiting"
            abort
        fi

        log "Change ownership of /usr/local folder"
        sudo chown -R `whoami` /usr/local

        log "Reload Source"
        source ~/.bash_profile

    else

        log "Homebrew installed"
        log "Run Brew Doctor? (y/Y)"

        read BREW_DOCTOR

        if [[ $BREW_DOCTOR == y || $BREW_DOCTOR == Y ]] ; then
            brew doctor
        fi

    fi

    # Brew Update
    log "Run Brew Update and Upgrade? (y/Y)"
    read BREW_UPDATE

    if [[ $BREW_UPDATE == y || $BREW_UPDATE == Y ]] ; then
        log "Brew Update and Upgrade"
        brew update && brew upgrade
    fi

    # Install the Dupes
    subheader "Brew Install Dupes"
    brew tap homebrew/dupes || { log "Dupes already Tapped"; }

    # Install WGet, ImageMagick, OpenSSL, LibYAML, LibIConv
    subheader "Install Curl, WGet, ImageMagick, openssl, libyaml"
    brew install curl wget imagemagick openssl libyaml libiconv git
    brew link openssl --force

fi