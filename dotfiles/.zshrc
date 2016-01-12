################################################################################
#                                                                              #
# .zshrc DotFile                                                               #
#                                                                              #
################################################################################

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load - Look in ~/.oh-my-zsh/themes/
ZSH_THEME="powerline"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=( git )

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/bin:/usr/local/sbin:~/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# RBENV Path
if which rbenv > /dev/null; then
    eval "$(rbenv init - --no-rehash)";
fi

# NVM Path
#if which nvm > /dev/null; then
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
#fi

# Update system
echo "Update System (y/Y)"
read CONTINE

if [[ $CONTINE == y || $CONTINE == Y ]] ; then

    sudo softwareupdate -i -a

    brew update
    brew upgrade
    brew cleanup
    brew prune

    npm -g update

    gem update --no-ri --no-rdo --system
    gem update --no-ri --no-rdo
    gem clean

    rbenv rehash

fi
