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

log "Continue (y/Y)"
read OHMY_CONTINE

if [[ $OHMY_CONTINE == y || $OHMY_CONTINE == Y ]] ; then

    subheader "Downloading"

    if [ ! -d  ~/.oh-my-zsh ]; then
        log "-e \\tGit Clone"
        curl -L http://install.ohmyz.sh | sh
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

        # wget "https://github.com/Lokaltog/powerline-fonts/raw/master/SourceCodePro/Sauce%20Code%20Powerline%20Regular.otf"
        # fontforge -script "Sauce Code Powerline Regular.otf"

    else

        log "-e \\tAlready Installed - Updating" true
        cd ~/.oh-my-zsh/themes/powerline
        git pull

    fi

    subheader "Overwrite ~/.zshrc and ~/.zprofile files"

    cp "$DOTFILES"/.zshrc ~/.zshrc
    cp "$DOTFILES"/.zprofile ~/.zprofile

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

fi