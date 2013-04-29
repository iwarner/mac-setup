#!/usr/bin/env bash

######################################################################
#                                                                    #
# RVM Recipe                                                         #
#                                                                    #
######################################################################

header "RVM Installation Script"

subheader "Download"

if ! has rvm; then

    if [ ! -f tmp/rvm.sh ] ; then
        log "RVM not installed.. installing"
        cd tmp > /dev/null; \curl "https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer" > "rvm.sh"
    fi

    if [ ! -d ~/.rvm ] ; then
        source tmp/rvm.sh stable
    fi

else
    log "-e \\t RVM installed" true
fi

subheader "Restart Terminal"
source ~/.rvm/scripts/rvm

subheader "RVM Version"
rvm -v

# log "Install Ruby 2.0.0 as Default"
rvm install ruby --autolibs=3

# #sudo rvm install rubygems latest