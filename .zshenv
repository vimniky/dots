# Path to your oh-my-zsh installation.
export USER_NAME="vimniky"
export ZSH=/Users/vimniky/.oh-my-zsh
export PATH="$PATH:/Applications/racket/bin:$HOME/bin:."
export PATH="$PATH:$HOME/Library/Haskell/bin"
export PATH="/usr/local/sbin:$PATH"

# Make vim the default editor.
export EDITOR='vim'
export editor=vim

# just
export PATH=$HOME/.just-installs/bin:$PATH

# Change defalult Homebrew Bottles sources
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles

# Homebrew
# Change defalult Homebrew Bottles sources
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles

# yarn
export PATH="$PATH:$HOME/.yarn/bin"

# If you installed the SDK via Homebrew, otherwise ~/Library/Android/sdk
export ANDROID_HOME=/usr/local/opt/android-sdk

export TERM=xterm-256color
## fzf setting
export FZF_DEFAULT_OPTS='--reverse'

# Make Python use UTF-8 encoding for output to stdin, stdout, and stderr.
export PYTHONIOENCODING='UTF-8';

# Prefer US English and use UTF-8.
export LANG='en_US.UTF-8';
export LC_ALL='en_US.UTF-8';

# Highlight section titles in manual pages.
export LESS_TERMCAP_md="${yellow}";

# Don’t clear the screen after quitting a manual page.
export MANPAGER='less -X';

# added by Anaconda3 5.2.0 installer
export PATH="/anaconda3/bin:$PATH"

########## flutter
export PATH="$PATH:$HOME/flutter-dev/flutter/bin"
# Flutter Registry
# [镜像地址](https://flutter.cn/community/china)
# 社区主镜像，采用多种方式同步 Flutter 开发者资源（推荐）。
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

