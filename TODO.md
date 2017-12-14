# TODO

## General

- [ ] Create a menu which says what to install and what has been installed and when
- [ ] use a .file in user folder for info
- [ ] Add a license for the package
- [ ] Create tests for the Bash functions
- [ ] Create tests for the recipes also
- [ ] Make easily installable on Docker containers - use on my server on digital ocean especially the dotfiles
- [ ] Create a self install script from GitHub like Homebrew and others do
- [ ] Format and lint the files - install standard.js
- [ ] Recreate in Electron and package all binaries in this and just install electron with GUI to install
- [ ] Look at the bash options some more - http://www.tldp.org/LDP/abs/html/options.html
- [ ] Make the script work with installing Zip files and PKG files.
- [ ] Create a documentation wiki
- [ ] Can I check for network connection through bash
  ping -q -w 1 -c 1 `ip r | grep default | cut -d ' ' -f 3` > /dev/null && echo ok || echo error
- [ ]Store the downloaded files in folder marking the versions specified in options
  > tmp > packagename
- [ ] Try and find out where the terminal exits and what the error is - terminal.log with set -e

## Apache

- [ ] This should be created in a docker container
- [ ] Create some standard conf files
- [ ] PHP FPM setup
- [ ] Change user and group for Apache to ones own. whoami

## Docker

- [ ] Download some common images and store them
- [ ] Make sure the cask is updated before download - brew update or others

## Dotfiles

- [ ] Removing files will error on first time as they do not exist - check first
- [ ] GitIgnore global errors says no file or directory - removed this - setup again for mac ignore

## Homebrew

- [ ] ImageMagick Keg is missing - maybe spelling mistake, maybe this is just on the removal - get specific error
- [ ] Need to check that the URL returned 200 - Pause Script otherwise
- [ ] Check to see if .bashrc and .zshrc exist
- [ ] Script uninstalls imagemagick and graphicksmagick then re-installs check first -

## File Extensions

- [ ] Change file extensions associated to programs
  - [ ] erb, haml, rb etc should be opened by Sublime Test 3
  - [ ] Apple LaunchCtrl should do the trick here

## Sublime Text 3

- [ ] Create recipe for Sublime 3
- [ ] Expand the sublime project files with the correct settings.
- [ ] Sublime Linter and Ruby configuration
  http://stackoverflow.com/questions/9153210/configuring-the-sublime-linter-plugin-to-use-ruby-1-9-syntax

## OSX / XCode / GCC

- [ ] Check to see what xcode-select is already set too before running command
- [ ] Remove and Add Items from the Dock - can use defaults or plist tools probably
- [ ] Check that the OSX file works with Mavericks

## NGinx

- [ ] Finish the install script create as a docker container
- [ ] Make it work with PHP FPM

## iTerm

- [ ] Finish the install script

## MySQL

- [ ] Finish of the install script - tidy up
- [ ] MySQL sort out the my.cnf caveat - /etc » locate my.cnf
- [ ] MySQL run the start from login routines.

## PostGres

- [ ] Finish the install script

## PHP

- [ ] PearRC caveat for PHP5

  if -f ~/.pearrc
    then
      sudo mv -f ~/.pearrc ~/.pearrc.bk
  fi

## Image Optimisation

- [ ] Add http://imageoptim.com/ImageOptim.tbz2
- [ ] Add jpegoptim
- [ ] Add optipng
- [ ] Replicate ImageOptim

## Image Optim

- [ ] Add this to the casks

## Virtual Box

- [ ] Fails as it asks for permissions outside the standard install

## VSCode

- [ ] Add this to the casks

## uTorrent

- [ ] Remove does not exist anymore

## TunnelBlick

- [ ] Remove not needed

## Ruby

- [ ] Allow the user to choose the Version of Ruby they want from the Rbenv List - default to latest?
- [ ] Check .gem folder exists before trying to remove
- [ ] ruby install line 51 no bashrc file
- [ ] Ruby gems update looking at older file system not rebenv - need to source the Rbenv before updating
      Re-running solves this
- [ ] Need to add a force so it overwrites the executable feedback

## Node

- [ ] Asks for username
- [ ] Node asks for password - this is probably for NPM login - clarify this addUser

## ZSH

- [ ] Need to change the theme / preference if possible to Homebrew, maybe in shell script

# Need to reset console before attempting updates

## 7 Zip

The command-line package to do this is p7zip, specifically the 7za command.
It's available through MacPorts or Fink. A typical extract command: 7za x archive.7z

To extract all the 7z files under a directory you'd do something like this:
find <startdir> -name "*.7z" -exec 7za x {} \;
(where <startdir> is the top-level directory containing all the archives).
