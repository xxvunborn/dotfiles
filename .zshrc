export LC_ALL=en_US.utf-8
export LANG="$LC_ALL"
#
# MAIN PATH
export HOME="/Users/chris"
export PATH="$HOME/.bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export POWERLINE=$HOME/Library/Python/2.7/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh

# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME=agnoster
#ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="robbyrussell"
set termguicolors

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration
source $ZSH/oh-my-zsh.sh

# LENGUAGE PATH
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# FZF dot files find
#export FZF_DEFAULT_COMMAND='ag --hidden --ignore node_modules -g ""'

# GOLANG PATH
export GOROOT=/usr/local/go
export GOPATH=$HOME/ws/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin 

# JDT LSP
export JDTLS_HOME=$HOME/ws/github.com/eclipse/jdt

# NVM VERSION MANAGER PATH
#export NVM_DIR="$HOME/.nvm"
  #. "/usr/local/opt/nvm/nvm.sh"
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Openssl PATH
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"

export PKG_CONFIG_PATH="/usr/local/opt/mysql@5.7/lib/pkgconfig"
export EDITOR=nvim


# redefine prompt_context for hiding user@hostname
prompt_context () { }

# NEOVIM COMMANDS
alias v="nvim"
alias v.='nvim .'

## TERMINAL COMMANDS
alias cl='clear'

## C++ COMMANDS
alias compile="clang++ -std=c++11 -o out"

#TMUX COMMANDS
#export TERM=xterm-256color
alias tmux='TERM=screen-256color tmux'
alias tlist='tmux list-sessions'
alias tat='tmux a -t'
alias tx='tmuxinator'
alias txo='tmuxinator open'
alias txs='tmuxinator start'

# DOCKER COMMANDS
alias dcup="docker-compose up"
alias dcdown="docker-compose down"
alias dcbuild="docker-compose build"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs virtualenv)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs rbenv)

alias luamake=$HOME/.config/lua-language-server/3rd/luamake/compile/luamake
