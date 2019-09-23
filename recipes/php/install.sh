#!/usr/bin/env bash

# https://github.com/josegonzalez/homebrew-php
# To enable PHP in Apache add the following to httpd.conf and restart Apache:
#     LoadModule php5_module    /usr/local/opt/php54/libexec/apache2/libphp5.so
# The php.ini file can be found in:
#     /usr/local/etc/php/5.4/php.ini
# ✩✩✩✩ PEAR ✩✩✩✩
# If PEAR complains about permissions, 'fix' the default PEAR permissions and config:
#     chmod -R ug+w /usr/local/Cellar/php54/5.4.21/lib/php
#     pear config-set php_ini /usr/local/etc/php/5.4/php.ini
# ✩✩✩✩ Extensions ✩✩✩✩
# If you are having issues with custom extension compiling, ensure that
# you are using the brew version, by placing /usr/local/bin before /usr/sbin in your PATH:
#       PATH="/usr/local/bin:$PATH"
# PHP54 Extensions will always be compiled against this PHP. Please install them
# using --without-homebrew-php to enable compiling against system PHP.
# ✩✩✩✩ PHP CLI ✩✩✩✩
# If you wish to swap the PHP you use on the command line, you should add the following to ~/.bashrc,
# ~/.zshrc, ~/.profile or your shell's equivalent configuration file:

header "PHP"

read -p "Continue (y/Y) " -n 1 -r

if [[ $REPLY =~ ^[Yy]$ ]]
then

  # Install the latest PHP via HomeBrew
  brew update

  brew tap homebrew/dupes
  brew tap homebrew/versions
  brew tap homebrew/homebrew-php

  # List option
  # brew options php54

  # PHP 5.4
  brew install php54 php54-mcrypt

fi
