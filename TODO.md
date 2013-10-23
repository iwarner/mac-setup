# TODO

* Look at the bash options some more
* Make the script work with installing Zip files and PKG files.
* Create a deploy thor script for git and wiki deploy
* Create a proper wiki
* Can I check for network connection through bash
    * ping -q -w 1 -c 1 `ip r | grep default | cut -d ' ' -f 3` > /dev/null && echo ok || echo error
* Store the downloaded files in folder marking the versions specified in options
* Split this todo into better sections.
* Try and find out where the terminal exits and what the error is - terminal.log with set -e
* Change file extensions associated to programs
    * erb, haml, rb etc should be opened by Sublime Test 2
    * Launch Ctrl should do the trick here

## Oh My ZSH

* Include powerline theme

## Sublime Text 2 / 3

* Create recipe for Sublime 3
* Expand the sublime project files with the correct settings.
* Sublime Linter and Ruby configuration
    http://stackoverflow.com/questions/9153210/configuring-the-sublime-linter-plugin-to-use-ruby-1-9-syntax

## Markdown

* Find out how to do multi-columns / tables in markdown

## GitFLow

* Set up GitFLow with this repo

## OSX / XCode / GCC

* Check to see what xcode-select is already set too before running command
* Remove and Add Items from the Dock - can use defaults or plist tools probably

## MySQL

* MySQL sort out the my.cnf caveat - /etc » locate my.cnf
* MySQL run the start from login routines.

## PHP

* PearRC caveat for PHP5

    if -f ~/.pearrc
        then
            sudo mv -f ~/.pearrc ~/.pearrc.bk
    fi

## Image Optimisation

* Add http://imageoptim.com/ImageOptim.tbz2
* Add jpegoptim
* Add optipng

## Gems

* Should think about moving this ahead of other gem updates like in rbenv