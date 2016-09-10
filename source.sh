# source in other custom setting files
. ./alias.sh
. ./functions.sh
. ./colorman.sh
. ./haskell.sh

eval "$(hub alias -s)"

## autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
