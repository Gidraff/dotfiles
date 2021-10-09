# Default editor
export EDITOR=vim

# React Native
export ANDROID_SDK=$HOME/Library/Android/sdk
export PATH=$HOME/Library/Android/sdk/platform-tools:$PATH
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

ZSH_THEME="fino"
export GOPATH="$HOME/Projects/DevCode/go"
export PATH=$PATH:$GOPATH/bin:/usr/local/sbin
export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh

export ZSH=$HOME/.oh-my-zsh
export PATH=$PATH:$(which eslint)
export JAVA_HOME=`/usr/libexec/java_home --version 14`

# Atom path
export PATH=$PATH:$(which atom)
export PATH=$PATH:$(which apm)

# User configuration
export MANPATH="/usr/local/man:$MANPATH"

# Bazel path
export PATH="$PATH:$HOME/bin"

export ARCHFLAGS="-arch x86_64"

export ATOM_PATH=/Applications/Development/Atom.app

export LANG=en_US.UTF-8

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Command readability
function kubectl() { echo "+ kubectl $@">&2; command kubectl $@; }
function docker() { echo "+ docker $@">&2; command docker $@; }
function helm() { echo "+ helm $@">&2; command helm $@; }
function git() { echo "+ git $@">&2; command git $@; }
