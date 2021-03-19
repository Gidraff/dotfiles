# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/gidraffkamande/.oh-my-zsh"
export PATH=$PATH:$(which eslint)
export JAVA_HOME=$(/usr/libexec/java_home)
export JAVA_HOME8=`/usr/libexec/java_home --version 1.8`
export JAVA_HOME12=`/usr/libexec/java_home --version 12`
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="avit"
export GOPATH="$HOME/Projects/Private/go"
export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh

# Atom path
export PATH=$PATH:$(which atom)
export PATH=$PATH:$(which apm)
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git brew npm)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/gidraffkamande/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/gidraffkamande/Downloads/google-cloud-sdk/path.zsh.inc'; fi
alias golang='/Users/gidraffkamande/Projects/Private/go/src/github.com/Gidraff'
alias dk='docker'
alias dkl='docker logs'
alias dklf='docker logs -f'
alias dki='docker images'
alias dks='docker services'
alias dkrm='docker rm'
alias dm='docker-machine'
alias dmx='docker-machine ssh'
alias j8='export JAVA_HOME=$JAVA_HOME8;'
alias j12='export JAVA_HOME=$JAVA_HOME12;'
alias ofiles='lsof -nP +c 15 | grep LISTEN'
# Java version

#alias dkps="docker ps --format `{{.ID}} ~ {{.Names}} ~ {{.Status}} ~ {{.Image}}`"
# The next line enables shell command completion for gcloud.
if [ -f '/Users/gidraffkamande/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/gidraffkamande/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
export ATOM_PATH=/Applications/Development/Atom.app
function kubectl() { echo "+ kubectl $@">&2; command kubectl $@; }


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/gidraffkamande/.nvm/versions/node/v11.12.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/gidraffkamande/.nvm/versions/node/v11.12.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/gidraffkamande/.nvm/versions/node/v11.12.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/gidraffkamande/.nvm/versions/node/v11.12.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/gidraffkamande/.nvm/versions/node/v11.12.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/gidraffkamande/.nvm/versions/node/v11.12.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true
[ -f ~/.kubectl_aliases ] && source ~/.kubectl_aliases
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
