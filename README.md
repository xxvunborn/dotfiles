# Install
the repository contain the necesary configuration for my daily work on a MacOs.
Tested in: MacOs Mojave


This repository will install the next packages and configuration.


## PHASE 1: Install the neccesary packages for the setup.

- homebrew
- nvim
- iterm2
- ssh / ohmyssh
- node / yarn
- cmake / gcc / luarocks

## PHASE 2: Install and configure vim-plugins (Vundle)

- TODO: Change for vim-plug
- Vundle 
- PluginInstall

## PHASE 3: Copy configurations files for previous installation

- init.vim
- .zshrc
- .tmux.conf

## PHASE 4: Set the configuration for Conquer of Completion (coc-vim)

- Install plugins:
- 	- coc-json
- 	- coc-python
- 	- coc-tsserver
- Copy coc-settings

## PHASE 5: Install other packages

- go
- gopls (For coc linter)

For install all:


```
make install
```

