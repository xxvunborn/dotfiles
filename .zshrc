export LC_ALL=en_US.utf-8
export LANG="$LC_ALL"

# Path to your oh-my-zsh installation.
export ZSH=/Users/chrismunoz/.oh-my-zsh
export POWERLINE=/Users/chrismunoz/Library/Python/2.7/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh

# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME=agnoster
#ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

source $ZSH/oh-my-zsh.sh

# MAIN PATH
export HOME="/Users/chrismunoz"
export PATH="/Users/chrismunoz/.bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# LENGUAGE PATH
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# GOLANG PATH
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/ws/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin 

# RUBY VERSION MANAGER PATH
#export PATH="$HOME/.rbenv/shims:$PATH"
#eval "$(rbenv init -)"

# POSTGRES PATH
export PATH=$PATH:/Library/PostgreSQL/9.0/bin/ gem install pg

# ANDROID SDK PATH
export ANDROID_HOME=/usr/local/opt/android-sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

# PYTHON VERSION MANAGER PATH
#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"

# NVM VERSION MANAGER PATH
#export NVM_DIR="$HOME/.nvm"
  #. "/usr/local/opt/nvm/nvm.sh"

# FLUTTER PATH
export PATH=/Users/chrismunoz/ws/Github.com/flutter/bin:$PATH

# Openssl PATH
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"

# Mysql@5.7
export LDFLAGS="-L/usr/local/opt/mysql@5.7/lib"
export CPPFLAGS="-I/usr/local/opt/mysql@5.7/include"

export PKG_CONFIG_PATH="/usr/local/opt/mysql@5.7/lib/pkgconfig"
export EDITOR=nvim


# redefine prompt_context for hiding user@hostname
prompt_context () { }

# NEOVIM COMMANDS
alias v="nvim"
alias v.='nvim .'

## TERMINAL COMMANDS
alias cl='clear'
alias ruvix="cd ~/ws/Github.com/ruvix/"
alias xxv="cd ~/ws/Github.com/xxvunborn/"

## C++ COMMANDS
alias compile="clang++ -std=c++11 -o out"

#REACT NATIVE COMMANDS
alias rna='react-native run-android'
alias rni='react-native run-ios'

#TMUX COMMANDS
alias tlist='tmux list-sessions'
alias tat='tmux a -t'

# GIT COMMANDS
alias gcd="git checkout development"
alias gcdd="git checkout develop"
alias gpod="git pull origin development"

# DOCKER COMMANDS
alias dconsole="docker-compose run app rails console"
alias dcup="docker-compose up"
alias dcdown="docker-compose down"
alias dcbuild="docker-compose build"

#RAILS COMMANDS
alias rs='rails s'
alias rc='rails c'
alias rdbd="bundle exec rake db:drop"
alias rdbc="bundle exec rake db:create"
alias rdbm="bundle exec rake db:migrate"
alias rdbs="bundle exec rake db:seed"
alias rdbr="bundle exec rake db:drop && bundle exec rake db:create && bundle exec rake db:migrate && bundle exec rake db:seed"
alias annotate="bundle exec annotate"
alias sidekiq="bundle exec sidekiq"
alias berr="bundle exec rake routes"

#PSQL command
alias psqls="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"

#KILL COMMANDS
# function for kill any thing
#alias kiall="function f() { kill -9 $(ps aux | grep '$1' | grep -v grep | awk '{print $2}') }; f"
alias killnvim=" kill -9 $(ps aux | grep nvim | grep -v grep | awk '{print $2}')"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs virtualenv)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs rbenv)

#COMMANDS
# by papi vera
ip () {
        ifconfig | grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn} inet | grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn} broadcast | awk '{print $2}'
}
