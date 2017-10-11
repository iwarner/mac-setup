# TODO

## General

* Create a menu which says what to install and what has been installed and when - use a .file in user folder for info
* Add a license for the package
* Create tests for the Bash functions
* Create tests for the recipes also
* Make easily installable on Docker containers - use on my server on digital ocean
  especially the dotfiles
* Create a self install script from GitHub like Homebrew and others do
* Format and lint the files - install standard.js
* Re-create in NODE - would need node already installed?
* Recreate in Electron and package all binaries in this and just install electron with GUI to install
* Look at the bash options some more
  * http://www.tldp.org/LDP/abs/html/options.html
* Make the script work with installing Zip files and PKG files.
* Create a documentation wiki
* Can I check for network connection through bash
  * ping -q -w 1 -c 1 `ip r | grep default | cut -d ' ' -f 3` > /dev/null && echo ok || echo error
* Store the downloaded files in folder marking the versions specified in options
  * > tmp > packagename
* Try and find out where the terminal exits and what the error is - terminal.log with set -e

## File Extensions

* Change file extensions associated to programs
  * erb, haml, rb etc should be opened by Sublime Test 2
  * Apple LaunchCtrl should do the trick here

## Sublime Text 3

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

## iTerm

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

# Need to reset console before attempting updates

## 7 Zip

The command-line package to do this is p7zip, specifically the 7za command. It's available through MacPorts or Fink. A typical extract command:
7za x archive.7z

To extract all the 7z files under a directory you'd do something like this:
find <startdir> -name "*.7z" -exec 7za x {} \;
(where <startdir> is the top-level directory containing all the archives).
