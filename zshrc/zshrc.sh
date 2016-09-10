export USER_NAME="vimniky"

eval "$(hub alias -s)"

# custom config dirctory of  zsh
export dotDir=$HOME/dots
export dotZshrc=$dotDir/zshrc
export dotHaskell=$dotDir/haskell

# source in other custom setting files
. $dotZshrc/alias.sh
. $dotZshrc/autoalias.sh
. $dotZshrc/functions.sh
. $dotZshrc/colorman.sh
. $dotHaskell/alias.sh
. $dotHaskell/setup.sh

## autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
