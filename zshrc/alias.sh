# source in zsh configs

alias sozsh="source ~/.zshrc"
alias initdot="source $dotDir/init.sh"
alias vinit="vim $dotDir/init.sh"
alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw &>/dev/null"
# alias for editting zsh settings files
alias vzshrc="vim ~/.zshrc"
alias valias="vim $dotZshrc/alias.sh"
alias vautoalias="vim $dotZshrc/autoalias.sh"
alias vzsh="vim $dotZshrc/zshrc.sh"
alias vimrc="vim ~/.vimrc"
alias vexport="vim $dotZshrc/export.sh"

# alias for editting vim settings files

#vimCustom=$dotVimrc/.vim/custom
#alias vset="vim $vimCustom/settings.vim"
#alias vmap="vim $vimCustom/mappings.vim"

# alias for editting git settings files
alias vgit="vim ~/.gitconfig"

# cd
alias desk="cd ~/Desktop"

# files
alias rrm="rm -rf"
alias cpp="cp -Rp"

alias treep="tree --noreport -fp"
alias treepa="tree --noreport -fpa"


function mydotPaths()  {
     echo "exported paths : "
     echo "dotDir : $dotDir "
     echo "dotZshrc : $dotZshrc "
     echo "dotVimrc : $dotVimrc "
     echo "dotMongorc : $dotMongorc "
     echo "dotEditorsrc : $dotEditorsrc "
}

