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

iohmyssh: 
	@echo [Install]: Ohmyssh
	@sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

ivundle:
	@echo [Install]: Vundle
	@git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

ivundleplugins:
	@echo [Install]: Vundle: PluginInstall
	@nvim --headless +PluginInstall +qall

czshrc: 
	@echo [Copy]: .zshrc
	@cp ./.zshrc  ~/.zshrc

cinit:
	@echo [Copy]: Init.vim
	@cp ./init.vim  ~/.config/nvim/init.vim

ctmuxconf:
	@echo [Copy]: .tmux.conf
	@cp ./.tmux.conf ~/.tmux.conf

cocplugins: 
	@echo [Install]: CocInstall -all
	@mkdir -p ~/.config/coc/extensions
	@cp  -a ./extensions ~/.config/coc/extensions
	@npm install --prefix ~/.config/coc/extensions

ccocconfig:
	@echo [Copy]: Coc-Config
	@cp ./coc-settings.json ~/.config/nvim/coc-settings.json

phase1: ihomebrew invim iiterm2 itmux iohmyssh ivundle

phase2: czshrc cinit ctmuxconf ivundleplugins

phase3: cocplugins ccocconfig

install: phase1 phase2 phase3
