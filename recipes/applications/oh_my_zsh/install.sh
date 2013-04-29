#!/usr/bin/env bash

######################################################################
#                                                                    #
# Oh My ZSH Recipe                                                   #
#                                                                    #
# https://github.com/robbyrussell/oh-my-zsh                          #                                                                    #
#                                                                    #
######################################################################

header "Installing Oh My ZSH"

subheader "Downloading"

if [ ! -d  ~/.oh-my-zsh ]; then

    log "-e \\tGit Clone"
    mkdir $HOME/.oh-my-zsh

    hash git >/dev/null && /usr/bin/env git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

    subheader "Enable ZSH"

    chsh -s `which zsh`
    /usr/bin/env zsh

else
    log "-e \\tAlready Installed" true
fi

subheader "Overwrite ~/.zshrc file"

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
