#!/usr/bin/env bash

#######################################################################
#                                                                     #
# Oh My ZSH Recipe                                                    #
#                                                                     #
# https://github.com/robbyrussell/oh-my-zsh                           #
# https://github.com/jeremyFreeAgent/oh-my-zsh-powerline-theme        #
# https://github.com/Lokaltog/powerline-fonts/tree/master/Inconsolata #
#                                                                     #
#######################################################################

header "Installing Oh My ZSH"

subheader "Downloading"

if [ ! -d  ~/.oh-my-zsh ]; then
    log "-e \\tGit Clone"
    curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
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

subheader "Overwrite ~/.zshrc and ~/.zprofile files"

cp "$BASH_PATH"/dotfiles/.zshrc ~/.zshrc
cp "$BASH_PATH"/dotfiles/.zprofile ~/.zprofile

subheader "Delete BASH Files"

if [ -f ~/.bash_history ] ; then
    rm ~/.bash_history
fi

if [ -f ~/.bash_profile ] ; then
    rm ~/.bash_profile
fi

if [ -f ~/.bashrc ] ; then
    rm ~/.bashrc
fi
