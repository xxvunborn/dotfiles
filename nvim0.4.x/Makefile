###############################################################
# PHASE 1
###############################################################

# Install the neccesary packages for the setup.
# homebrew
# nvim
# iterm2
# ssh / ohmyssh
# node / yarn
# cmake / gcc / luarocks

###############################################################

ihomebrew:
	@echo [Install]: Homebrew
	@/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

invim: 
	@echo [Install]: Neovim
	@brew install neovim

iiterm2:
	@echo [Install]: Iterm2
	@brew cask install iterm2

issh:
	@echo [Install]: SSH
	@brew install ssh

itmux: 
	@echo [Install]: Tmux
	@brew install tmux

inode:
	@echo [Install]: Node
	@brew install node

iyarn:
	@echo [Install] Yarn 
	@brew install yarn

iohmyssh: 
	@echo [Install]: Ohmyssh
	@sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

icmake:
	@echo [Install]: Cmake
	@brew install cmake

igcc:
	@echo [Install]: GCC
	@brew install gcc

iluarocks:
	@echo [Install]: Luarocks
	@brew install luarocks


phase1: ihomebrew invim iiterm2 itmux iohmyssh inode iyarn icmake igcc iluarocks

###############################################################
# PHASE 2
###############################################################

# Install and configure vim-plugins (Vundle)
# TODO: Change for vim-plug
# Vundle 
# PluginInstall
#
###############################################################

#ivundle:
#	@echo [Install]: Vundle
#	@git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cinit:
	@echo [Copy]: Init.vim
	@mkdir -p ~/.config/
	@mkdir -p ~/.config/nvim/
	@cp ./init.vim  ~/.config/nvim/init.vim

ivundleplugins:
	@echo [Install]: Vundle: PluginInstall
	@nvim --headless +PluginInstall +qall
	
phase2: cinit ivundleplugins

###############################################################
# PHASE 3
###############################################################

# Copy configurations files for previous installation
# init.vim
# .zshrc
# .tmux.conf

###############################################################

czshrc: 
	@echo [Copy]: .zshrc
	@cp -a ./.zshrc  ~/.zshrc

ctmuxconf:
	@echo [Copy]: .tmux.conf
	@cp ./.tmux.conf ~/.tmux.conf

phase3: czshrc cinit ctmuxconf ivundleplugins

###############################################################
# PHASE 4
###############################################################

# Set the configuration for Conquer of Completion (coc-vim)
# Install plugins:
# 	- coc-json
# 	- coc-python
# 	- coc-tsserver
# Copy coc-settings

###############################################################

cocplugins: 
	@echo [Install]: CocInstall -all
	@mkdir -p ~/.config/coc/extensions
	@cp -a ./extensions ~/.config/coc/
	@npm install --prefix ~/.config/coc/extensions

ccocconfig:
	@echo [Copy]: Coc-Config
	@cp ./coc-settings.json ~/.config/nvim/coc-settings.json

phase4: cocplugins ccocconfig

###############################################################
# PHASE 5
###############################################################

# Install go packages
# go
# gopls (For coc linter)
###############################################################

igo:
	@echo [Install]: Go
	@brew install go

igopls: 
	@echo [Install]: Gopls
	@go get golang.org/x/tools/gopls


phase5: igo igopls

###############################################################
# PHASE 5
###############################################################

# Install containers packages
# docker
# kubectl
# minicube
# k9s
# skaffold
###############################################################
idocker:
	@echo [Install]: Docker
	@brew cask install docker

ikubectl:
	@echo [Install]: Kubernetes 
	@brew install kubectl

iminikube:
	@echo [Install]: Kubernetes 
	@brew install minikube


ik9s:
	@echo [Install]: k9s 
	@brew install k9s

iskaffold:
	@echo [Install]: skaffold 
	@brew install skaffold

phase6:  ikubectl iminikube ik9s iskaffold

###############################################################
# PHASE m
###############################################################

# Install misselanious 
# bloomrpc
###############################################################
ibloomrpc:
	@echo [Install]: bloomrpc
	@brew cask install bloomrpc

phasem: ibloomrpc
###############################################################
install: phase2 phase3 phase4 phase5 phase6 phasem
