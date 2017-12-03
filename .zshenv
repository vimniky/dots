# Path to your oh-my-zsh installation.
export ZSH=/Users/vimniky/.oh-my-zsh

PATH="$PATH:/Applications/racket/bin:$HOME/bin:."
PATH="$PATH:$HOME/Library/Haskell/bin"
export PATH

export USER_NAME="vimniky"
export editor=vim

# Change defalult Homebrew Bottles sources
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles
export PATH="$PATH:$HOME/.yarn/bin"

export dbConf=/usr/local/etc/mongod.conf
export dbPath=/usr/local/var/mongodb
# If you installed the SDK via Homebrew, otherwise ~/Library/Android/sdk
export ANDROID_HOME=/usr/local/opt/android-sdk

export TERM=xterm-256color
## fzf setting
export FZF_DEFAULT_OPTS='--reverse'
