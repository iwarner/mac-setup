#!/usr/bin/env bash

######################################################################
#                                                                    #
# Functions                                                          #
#                                                                    #
######################################################################

# Abort

function abort ()
{
    log "-e Program Exited \\n\\n"
    exit 1
}

# Echo the Welcome Message

function hello ()
{
    header "$1"
    log "$2"
    log "-e \\nDirectories:"
    log "Current: ${CURRENT_DIR}"
    log "-e Working: ${BASH_PATH}\\n"
}

# Echo the Header

function header ()
{
    log "-e \\n$1"
    log "--------------------------------------------------------"
}

# Echo the Sub-header

function subheader ()
{
    log "-e $1"
}

# Log Right

function log()
{
    STATUSCOLOR=""
    COL=""

    if [ "${2:+isset}" == "isset" ]; then

        RED=$(tput setaf 1)
        GREEN=$(tput setaf 2)
        NORMAL=$(tput sgr0)

        if [ $2 == true ] ; then
            STATUS="[OK]"
            STATUSCOLOR="$GREEN${STATUS}$NORMAL"
        else
            STATUS="[FAIL]"
            STATUSCOLOR="$RED${STATUS}$NORMAL"
        fi

        let COL=$(tput cols)-${#1}+${#STATUSCOLOR}-${#STATUS}-42
    fi

    echo -n $1
    printf "%${COL}s\n" "$STATUSCOLOR"
}

# Check whether a command is available in the terminal

function has ()
{
    type "$1" >/dev/null 2>&1
}

# Clear the screen

clear
