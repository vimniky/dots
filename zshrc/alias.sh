# vim
dotzshrc=$HOME/dots/zshrc

alias vzshrc='vim ~/.zshrc'
alias valias='vim ~/dots/zshrc/alias.sh'
alias vautoalias='vim ~/dots/zshrc/autoalias.sh'
alias vzshrc='vim ~/dots/zsh/zshrc.sh'
alias vimrc='vim ~/.vimrc'
alias vexport='vim ~/dots/zshrc/export.sh'
alias vset='vim ~/.vim/custom/settings.vim'
alias vmap='vim ~/.vim/custom/mappings.vim'
alias vgit='vim ~/.gitconfig'

# cd
alias desk='cd ~/Desktop'
alias doc='cd ~/Documents'

# files
alias rrm='rm -rf'
alias cpp='cp -Rp'
alias sozsh='source ~/.zshrc'

# mkalias on the fly
############################
function mkalias() {
    echo  "alias $1='$2'" >> ~/dots/zshrc/autoalias.sh;
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
alias treep='tree --noreport -fp'
alias treepa='tree --noreport -fpa'

