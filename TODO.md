# TODO

## General

* Look at the bash options some more
    * http://www.tldp.org/LDP/abs/html/options.html
* Make the script work with installing Zip files and PKG files.
* Create a documentation wiki
* Can I check for network connection through bash
    * ping -q -w 1 -c 1 `ip r | grep default | cut -d ' ' -f 3` > /dev/null && echo ok || echo error
* Store the downloaded files in folder marking the versions specified in options
    * > tmp > packagename
* Try and find out where the terminal exits and what the error is - terminal.log with set -e

## Ripple

http://www.tricedesigns.com/2012/07/31/emulating-phonegapcordova-apps-in-the-browser/
http://www.android.com/devices/
*

## Apache

* Create the install file
* Symlink in the common conf files
* https://github.com/humanmade/hm-dev/wiki/Setup-a-local-dev-environment-on-Mac-OSX-Lion
    * Change user and group for Apache to ones own. whoami
    * PHP FPM setup

## NGinx

* Finish the install script
* Make it work with PHP FPM

## Homebrew

* Need to check that the URL returned 200
    * Pause Script otherwise
* Check to see if .bashrc and .zshrc exist

## File Extensions

* Change file extensions associated to programs
    * erb, haml, rb etc should be opened by Sublime Test 2
    * Apple LaunchCtrl should do the trick here

## Oh My ZSH

*

## Sublime Text 2 / 3

* Create recipe for Sublime 3
* Expand the sublime project files with the correct settings.
* Sublime Linter and Ruby configuration
    http://stackoverflow.com/questions/9153210/configuring-the-sublime-linter-plugin-to-use-ruby-1-9-syntax

## OSX / XCode / GCC

* Check to see what xcode-select is already set too before running command
* Remove and Add Items from the Dock - can use defaults or plist tools probably
* Check that the OSX file works with Mavericks

## Dotfiles

* Sort these out
* Complete the aliases section

## iTerms

* Finish the install script

## MySQL

* Finish of the install script - tidy up
* MySQL sort out the my.cnf caveat - /etc » locate my.cnf
* MySQL run the start from login routines.

## PostGres

* Finish the install script

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
* Replicate ImageOptim

## Gems

* Should think about moving this ahead of other gem updates like in rbenv

## Rbenv

# Need to reset console before attempting updates

## 7 Zip

The command-line package to do this is p7zip, specifically the 7za command. It's available through MacPorts or Fink. A typical extract command:
7za x archive.7z

To extract all the 7z files under a directory you'd do something like this:
find <startdir> -name "*.7z" -exec 7za x {} \;
(where <startdir> is the top-level directory containing all the archives).