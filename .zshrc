# Path to your oh-my-zsh installation.
export ZSH=/Users/Lalelilolu/.oh-my-zsh
export POWERLINE=/Users/Lalelilolu/Library/Python/2.7/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh

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
export PATH="/Users/Lalelilolu/.bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# LENGUAGE PATH
 export LANG="en_US.UTF-8"
 export LC_ALL="en_US.UTF-8"

# GOLANG PATH
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/.ws/go/
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin 

# RUBY VERSION MANAGER PATH
export PATH="$HOME/.rbenv/shims:$PATH"

# POSTGRES PATH
export PATH=$PATH:/Library/PostgreSQL/9.0/bin/ gem install pg

# ANDROID SDK PATH
export ANDROID_HOME=/usr/local/opt/android-sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

# PYTHON VERSION MANAGER PATH
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# NVM VERSION MANAGER PATH
export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"

# redefine prompt_context for hiding user@hostname
prompt_context () { }

# NEOVIM COMMANDS
alias v="nvim"
alias v.='nvim .'

## TERMINAL COMMANDS
alias cl='clear'

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
alias gpod="git pull origin development"

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

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs virtualenv)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs rbenv)

#COMMANDS
ip () {
        ifconfig | grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn} inet | grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn} broadcast | awk '{print $2}'
}
