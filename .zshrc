# ================================ PATHS ================================
# Oh-my-zsh PATH
export ZSH=/Users/Lalelilolu/.oh-my-zsh
export POWERLINE=/Users/Lalelilolu/Library/Python/2.7/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh

# User configuration
export PATH="/Users/Lalelilolu/.bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

# Go PATH
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/.ws/go/
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin 

# Postgresql PATH
export PATH=$PATH:/Library/PostgreSQL/9.0/bin/ gem install pg

# Android SDK PATH
export ANDROID_HOME=/usr/local/opt/android-sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

# PYTHON VERSION MANAGER PATH
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# RUBY version manager PATH
export PATH="$HOME/.rbenv/shims:$PATH"

# You may need to manually set your language environment
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Oh-my-zsh Theme
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME=agnoster

# Oh-my-zsh Plugins
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git)

# Oh-my-zsh source
source $ZSH/oh-my-zsh.sh

# SSH
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Redefine prompt_context for hiding user@hostname
prompt_context () { }

# Alias
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Miscellaneous
alias v="nvim"
alias v.='nvim .'
alias cl='clear'

# C++ Alias:
alias compile="clang++ -std=c++11 -o out"

# React Native alias
alias rna='react-native run-android'
alias rni='react-native run-ios'

# GIT alias
alias gcd='git checkout development'
alias gpod='git pull origin development'

#RAILS alias
alias rs='rails s'
alias rc='rails c'
alias rr='bundle exec rake routes'
alias bea='bundle exec annotate'
alias rdbd='bundle exec rake db:drop'
alias rdbc='bundle exec rake db:create'
alias rdbm='bundle exec rake db:migrate'
alias rdbs='bundle exec rake db:seed'
alias rdbr='bundle exec rake db:drop && bundle exec rake db:create && bundle exec rake db:migrate && bundle exec rake db:seed'

#PSQL alias
alias psqls='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'

# Scrips

# What is my ip By Vera
ip () {
        ifconfig | grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn} inet | grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn} broadcast | awk '{print $2}'
}
