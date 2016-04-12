# source in zsh configs
alias sozsh="source ~/.zshrc"


# alias for editting zsh settings files
alias vzshrc="vim ~/.zshrc"
alias valias="vim $dotZshrc/alias.sh"
alias vautoalias="vim $dotZshrc/autoalias.sh"
alias vzsh="vim $dotZshrc/zshrc.sh"
alias vimrc="vim ~/.vimrc"
alias vexport="vim $dotZshrc/export.sh"

# alias for editting vim settings files
vimCustom=$dotVimrc/.vim/custom
alias vset="vim $vimCustom/settings.vim"
alias vmap="vim $vimCustom/mappings.vim"

# alias for editting git settings files
alias vgit="vim ~/.gitconfig"

# cd
alias desk="cd ~/Desktop"
alias doc="cd ~/Documents"

# files
alias rrm="rm -rf"
alias cpp="cp -Rp"

# mkalias on the fly
############################
function mkalias() {
    echo  "alias $1=\"$2\" >> $dotZshrc/autoalias.sh";
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
alias treep="tree --noreport -fp"
alias treepa="tree --noreport -fpa"

