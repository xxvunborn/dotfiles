## Language
export LC_ALL=en_US.utf-8
export LANG="$LC_ALL"

## Main path
export PATH="$HOME/.bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH=/opt/homebrew/bin:$PATH

## Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

## Themes and colors
ZSH_THEME="robbyrussell"
set termguicolors

## Plugins
plugins=(git)

## User configuration
source $ZSH/oh-my-zsh.sh

# Golang path
export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec" 
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

## User configuration
###

# Neovim commands
alias v="nvim"
alias v.='nvim .'

# Docker commands
alias dcup="docker-compose up"
alias dcdown="docker-compose down"
alias dcbuild="docker-compose build"

# eval "$(~/.rbenv/bin/rbenv init - zsh)"
# CPP compilate
alias compile='f() { g++ -std=c++11 $1 -o out };f'
alias run='f() { ./$1 };f'
