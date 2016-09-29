# the dvm thing slow down zsh' startup a lot. just comment it out
# dvm is a shell function, and must be sourced before it can be used.
#[[ -s "$(brew --prefix dvm)/dvm.sh" ]] && source "$(brew --prefix dvm)/dvm.sh"
# dvm enable tab completion of commands
#[[ -s "$(brew --prefix dvm)/bash_completion" ]] && source "$(brew --prefix dvm)/bash_completion"

eval "$(hub alias -s)"

## autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
