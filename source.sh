# source in other custom setting files
. "$HOME/dots/alias.sh"
. "$HOME/dots/functions.sh"
. "$HOME/dots/colorman.sh"
. "$HOME/dots/haskell.sh"

eval "$(hub alias -s)"

## autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
