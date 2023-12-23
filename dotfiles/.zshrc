# .zshrc DotFile

# 1Password
export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock

# Homebrew
PATH=/usr/local/sbin:
PATH=$PATH/usr/local/bin:

# Default
PATH=$PATH/usr/bin:
PATH=$PATH/usr/sbin:
PATH=$PATH/bin:
PATH=$PATH/sbin:

# Laravel
PATH=$PATH~/.composer/vendor/bin:

# Android SDK Path - generic for Homebrew install - brew install android-sdk
PATH=$PATH/usr/local/opt/android-sdk

# Installed PIP for local stack
PATH=$PATH:~/Library/Python/2.7/bin

# Export path
export path

# NVM path
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# RBENV path
if which rbenv > /dev/null; then
  eval "$(rbenv init -)"
fi

# Path to oh-my-zsh configuration
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load - Look in ~/.oh-my-zsh/themes/
ZSH_THEME=robbyrussell

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=( git )

# Source
source $ZSH/oh-my-zsh.sh
