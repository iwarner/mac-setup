#########################################################################
#                                                                       #
# .zprofile DotFile                                                     #
#  Place custom Aliases within this files                               #
#                                                                       #
# http://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html #
#                                                                       #
#########################################################################

# Folder Launch
alias folder.w='~/Google\ Drive/www/'
alias folder.dk='~/www/DryKiss'

# Shortcuts
alias db="cd ~/Google\ Drive"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias h="history"
alias j="jobs"

# Middleman Launch
alias launch.dk='cd ~/Google\ Drive/www/DryKiss/drykiss.com/public && sudo bundle exec middleman server -h local.drykiss.com -p 80'
alias launch.eve='cd ~/Google\ Drive/www/DryKiss/eveonline.com/public && sudo bundle exec middleman server -p 80'

# Programs
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"

# Laravel
alias artisan="php artisan"

# List only directories
alias lsd='ls -lF ${colorflag} | grep "^d"'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Gzip-enabled `curl`
alias gurl='curl --compressed'

# Get week number
alias week='date +%V'

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"

# Clean up LaunchServices to remove duplicates in the “Open With” menu
alias lscleanup="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Bower
alias bower.ins='bower install && bower prune'
alias bower.up='bower update && bower prune'

# Apache
alias apache.stop='sudo apachectl stop'
alias apache.start='sudo apachectl start'
alias apache.restart='sudo apachectl restart'

# MySQL
alias mysql.stop='mysql.server stop'
alias mysql.start='mysql.server start'
alias mysql.restart='mysql.server restart'

# Thor
alias thor.b='thor project:build'
alias thor.e='thor project:emulate'
alias thor.l='thor project:links'
alias thor.pg='thor project:pgBuildZip'
alias thor.pr='thor project:pgBuildRemote'

# Ripple
alias ripple='ripple emulate --remote http://localhost'

for file in ~/.{exports,functions}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file