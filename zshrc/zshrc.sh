export PATH="$HOME/bin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"
export USER_NAME="vimniky"

# source in other custom setting files
. $dotZshrc/alias.sh
. $dotZshrc/autoalias.sh
. $dotZshrc/export.sh


# custom config dirctory of  zsh
export dotDir=$HOME/dots
export dotZshrc=$dotDir/zshrc
export dotVimrc=$dotDir/vimrc
export dotMongorc=$dotDir/mongorc


# File search
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

# mkdir and cd 
function take() { mkdir -p "$@" && cd "$_";}

