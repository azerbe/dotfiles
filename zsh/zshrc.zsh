# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME=""

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx vundle vi-mode)

# Every terminal we use supports 256 colors; iTerm2 on Mac and gnome-terminal on
# linux
TERM=xterm-256color

ZSH_CUSTOM=$HOME/dotfiles/zsh/custom

source $ZSH/oh-my-zsh.sh

# Source our custom theme
source $HOME/dotfiles/zsh/valloric.zsh-theme

export EDITOR="gvim -u $HOME/.vimrc -N -U NONE -f"
export PATH=$PATH:$HOME/bin
