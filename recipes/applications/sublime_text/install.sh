#!/usr/bin/env bash

######################################################################
#                                                                    #
# Sublime Text 2 Recipe                                              #
#                                                                    #
# cd ~/Dropbox/Service_Files/Server\ Local/Setup                     #
#                                                                    #
######################################################################

header "Installing Sublime Text $SUBLIME_VERSION"

subheader "Downloading"

if [ ! -f "tmp/Sublime-Text-$SUBLIME_VERSION.dmg" ] ; then

    log "-e \\tDownload"
    cd tmp > /dev/null; curl "$SUBLIME_URL" > "Sublime-Text-$SUBLIME_VERSION.dmg"

    # Check that the file downloaded and is in place

else
    log "-e \\tAlready Downloaded" true
fi

subheader "Mount Application"

if [ ! -d "/Applications/Sublime Text 2.app" ] ; then

    hdiutil mount -quiet "tmp/Sublime-Text-$SUBLIME_VERSION.dmg"

    log "Copy to /Applications"

    sudo cp -R "/Volumes/Sublime Text 2/Sublime Text 2.app" /Applications

    log "Unmount"

    hdiutil unmount -quiet "/Volumes/Sublime Text 2/"
else
    log "-e \\tAlready Installed" true
fi

subheader "Symlink Sublime"

if [ -d ~/Library/Application\ Support/Sublime\ Text\ 2 ] ; then
    rm -r ~/Library/Application\ Support/Sublime\ Text\ 2
fi

ln -s ~/Dropbox/Service\ Files/Library/Application\ Support/Sublime\ Text\ 2 ~/Library/Application\ Support/Sublime\ Text\ 2

if [ -f ~/Library/Preferences/com.sublimetext.2.plist ] ; then
    rm ~/Library/Preferences/com.sublimetext.2.plist
fi

ln -s ~/Dropbox/Service\ Files/Library/Preferences/com.sublimetext.2.plist ~/Library/Preferences/com.sublimetext.2.plist

log "-e \\tDone" true
