#!/usr/bin/env bash

# Oh My ZSH Recipe
#
# @author Ian Warner <ian.warner@drykiss.com>
# @category recipe
#
# @see https://github.com/robbyrussell/oh-my-zsh
# @see https://github.com/jeremyFreeAgent/oh-my-zsh-powerline-theme
# @see https://github.com/Lokaltog/powerline-fonts/tree/master/Inconsolata

header "Oh My ZSH"

# Ask For Input
read -p "Continue (y/Y) " -n 1 -r

# Check Response
if [[ $REPLY =~ ^[Yy]$ ]]
then
  subheader "Downloading"

  if [ ! -d  ~/.oh-my-zsh ]; then
    log "-e \\tGit Clone"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  else
    log "-e \\tAlready Installed" true
  fi

  subheader "Installing Powerline"

  if [ ! -d  ~/.oh-my-zsh/themes/powerline ]; then

    git clone https://github.com/jeremyFreeAgent/oh-my-zsh-powerline-theme.git ~/.oh-my-zsh/themes/powerline
    log "-e \\tCreating Symlink" true

    cd ~/.oh-my-zsh/themes/powerline
    ln -f powerline.zsh-theme ~/.oh-my-zsh/themes/powerline.zsh-theme

    cd ~/Library/Fonts
    wget "https://github.com/Lokaltog/powerline-fonts/raw/master/InconsolataDz/Inconsolata-dz%20for%20Powerline.otf"

  else
    log "-e \\tAlready Installed - Updating" true
    cd ~/.oh-my-zsh/themes/powerline
    git pull
  fi

fi
