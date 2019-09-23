#!/usr/bin/env bash

# Functions
#
# Colours
# http://tldp.org/LDP/abs/html/colorizing.html
# http://www.tldp.org/HOWTO/Bash-Prompt-HOWTO/x405.html
# black   30  40
# red     31  41
# green   32  42
# yellow  33  43
# blue    34  44
# magenta 35  45
# cyan    36  46
# white   37  47
# echo -e "\033[1;41mThis is bold text.\033[0m"

# Abort
function abort () {
  log "-e Program Exited \\n\\n"
  exit 1
}

# Echo the Welcome Message
function hello () {
  header "$1"
  log "$2"
  log "-e \\nDirectories:"
  log "Current: ${CURRENT_DIR}"
  log "-e Working: ${BASH_PATH}"
  log "-e User: `whoami`\\n"
}

# Echo the Header
function header () {
  log "-e \\n\033[1;34;47m $1 \033[0m"
  log "--------------------------------------------------------"
}

# Echo the Sub-header
function subheader () {
  log "-e \\n\033[1;33;47m $1 \033[0m"
}

# Log Right
function log () {
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
function has () {
  type "$1" >/dev/null 2>&1
}
