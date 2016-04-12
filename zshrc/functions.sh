# File search
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

# mkdir and cd 
function take() { mkdir -p "$@" && cd "$_";}

# mkalias on the fly
############################
function mkalias() {
    if [ $3 ] ;then 
        echo  "#$3" >> "$dotZshrc/autoalias.sh";
    fi
    echo  "alias $1=\"$2\"" >> "$dotZshrc/autoalias.sh";

    source ~/.zshrc
}

# tree 
############################
# useage treel 2 ~/someDir
function treel() {
     tree -L $1 $2
}
function treela() {
     tree -La $1 $2
}
