export PATH="$HOME/bin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

# custom config dirctory of  zsh
export dotsDir=$HOME/dots
export zshrcDir=$HOME/dots/zshrc

export USER_NAME="vimniky"

# File search
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

# mkdir and cd 
function take() { mkdir -p "$@" && cd "$_";}

