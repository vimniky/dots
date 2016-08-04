export PATH="$HOME/bin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"
export USER_NAME="vimniky"

#. $dotZshrc/vim-mappings.sh

eval "$(hub alias -s)"

# custom config dirctory of  zsh
export dotDir=$HOME/dots
export dotZshrc=$dotDir/zshrc
export dotVimrc=$dotDir/vimrc
export dotMongorc=$dotDir/mongorc
export dotEditorsrc=$dotDir/editorsrc
export dotHaskell=$dotDir/haskell

# source in other custom setting files
. $dotZshrc/alias.sh
. $dotZshrc/autoalias.sh
. $dotZshrc/functions.sh
. $dotZshrc/export.sh
. $dotZshrc/colorman.sh
. $dotHaskell/alias.sh
. $dotDir/emacs.d/emacs.sh

## autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
