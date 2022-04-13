DOTFILES :=  $(HOME)/dotfiles
MKDIR := mkdir -p
COPY := cp
COPYR := cp -rf
OH_MY_ZSH_DIR := $(HOME)/.oh-my-zsh
NVIM_CONFIG_DIR := $(HOME)/neovim/nvim/
NVIM_CONFIG := $(HOME)/neovim/init.vim
DOTFILE_NVIM_CONFIG := $(HOME)/dotfiles/neovim/nvim/init.vim
NVIM_CONFIG_PLUGINS := $(HOME)/neovim/nvim/plugins.vim
DOTFILE_NVIM_PLUGIN := $(HOME)/dotfiles/neovim/nvim/plugins.vim
TMUX_CONF := $(HOME)/.tmux.conf
VIMRC := $(HOME)/.vimrc
BAK_DIR := $(HOME)/dotfiles-bak


# Colors
COLOR_GRAY=$(echo -e "\033[1;38;5;243m")
COLOR_BLUE=$(echo -e "\033[1;34m")
COLOR_GREEN=$(echo -e "\033[1;32m")
COLOR_RED=$(echo -e "\033[1;31m")
COLOR_PURPLE=$(echo -e "\033[1;35m")
COLOR_YELLOW=$(echo -e "\033[1;33m")
COLOR_NONE=$(echo -e "\033[0m")


backup:
	@echo "Creating backup directory at ${BAK_DIR}"
	${MKDIR} ${BAK_DIR}
	@for file1 in $(find -H "${DOTFILES}" -maxdepth 3 -name '*.symlink'); do\
			filename=".$(basename $(file1) '.symlink')"; \
			target="${HOME}/${filename}"; \
			if [ -f ${target} ]; then\
				echo "backing up ${filename}"; \
				${COPY} ${target} ${BAK_DIR}; \
			else \
				${COLOR_YELLOW} "${filename} does not exist at this location or is a symlink"; \
			fi; done

	for filename in "$(HOME)/.config/nvim" "$(HOME)/.vim" "$(HOME)/.vimrc"; do\
	 		if [ ! -L "$(filename)" ]; then \
				echo "backingi up $(filename)"; \
				$(shell cp -rf $(filename) $(BAK_DIR))\
			else \
				${COLOR_YELLOW} "${filename} does not exist at this location or is a symlink"; \
			fi; done

define create_vimrc
	$(sh [ ! -f $(VIMRC) ] && $(file > $(VIMRC)))
	$(sh ./install)
	$(sh touch $(VIMRC) && $(sh ./install))
endef

define config_nvim_init
	$(shell touch $(NVIM_CONFIG))
endef


all:
ifeq ($(shell uname -s), Darwin)
		echo "Setting up macOsx"
		@/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
		@brew casks install iterm2 -x
		$(if [ -d $(OH_MY_ZSH_DIR) ],$(upgrade_oh_my_zsh),echo "file doesn't exist")
		brew install zsh nvm tmux neovim yarn npm
		$(nvm install 12.22.0 14.17.0)
		$(sh -c "upgrade_oh_my_zsh")

		# Install fonts
		brew tap homebrew/cask-fonts
		brew install --cask font-hack-nerd-font font-fira-code

		# Add linting
		brew install vint shellcheck jsonlint yamllint
		brew install tflint ansible-lint tidy-html5 proselint write-good
		yarn global add markdownlint-cli eslint jshint stylelint sass-lint
		pip3 install --user pycodestyle pyflakes flake8

		python3 -m pip install --user --upgrade pynvim
		yarn global add neovim
		npm install -g typescript
		sudo gem install neovim

		$(./install)
endif
ifeq ($(shell uname -s), Linux)
		echo "Setting up ubuntu"
		sudo apt upgrade -y
		sudo apt update
		sudo apt install tmux zsh neovim yarn stow npm -y
		sudo apt install curl
		$(curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash)
		$(nvm install 12.22.0 14.17.0)
		$(nvm us 14.17.0)

		sudo apt install shellcheck jsonlint yamllint ansible-lint -y
		sudo npm install -g markdownlint-cli eslint jshint stylelint sass-lint
		sudo npm install -g typescript neovim
		sudo apt-get install ruby ruby-dev python3-pip gem -y
		sudo pip3 install --user pycodestyle pyflakes flake8
		sudo gem install neovim

		$(./install)
endif

configr:
ifneq ($(wildcard $(NVIM_CONFIG_DIR)),)
			@echo "Folder exist"
			$(call config_nvim_init,)
else
			@echo "Failed to get folder. Creating nvim folder."
			$(shell mkdir -p $(NVIM_CONFIG_DIR))
			$(call config_nvim_init,)
endif
ifneq ($(wildcard $(VIMRC)),)
			@echo "File exist"
else
			@echo "File doesn't exist."
			@echo "Creating vimrc file"
			$(file > $(VIMRC))
endif
ifneq ($(wildcard $(TMUX_CONF)),)
			@echo "File with the name already exists. Aborting."
else
			@echo "Creating Tmux file"
			$(file > $(TMUX_CONF))
endif



			#$(call config_nvim_file)
