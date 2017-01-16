# Path to your oh-my-zsh installation.
export ZSH=/Users/vimniky/.oh-my-zsh

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cabal/bin:$PATH"
export PATH="/Applications/racket/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export USER_NAME="vimniky"
export editor=vim

# docker version manager
[ -f /usr/local/opt/dvm/dvm.sh ] && . /usr/local/opt/dvm/dvm.sh

# Change defalult Homebrew Bottles sources
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles
# This loads nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" 
# yarn
export PATH="$PATH:$HOME/.yarn/bin"

export dbConf=/usr/local/etc/mongod.conf
export dbPath=/usr/local/var/mongodb
# If you installed the SDK via Homebrew, otherwise ~/Library/Android/sdk
export ANDROID_HOME=/usr/local/opt/android-sdk
export PATH="$HOME/Library/Haskell/bin:$PATH"

export TERM=xterm-256color
