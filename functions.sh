# File search
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

# mkdir and cd 
function take() { mkdir -p "$@" && cd "$_";}

# mkalias on the fly
############################
function mkalias() {
    if [ $3 ] ;then 
        echo  "#$3" >> "~/dots/autoalias.sh";
    fi
    echo  "alias $1=\"$2\"" >> "~/dots/autoalias.sh";

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


# set up doc shell env
eval "$(docker-machine env default)"
#function docdefault() {
  #eval "$(docker-machine env default)"
#}

# Go to the open Finder window's path
function cdf {
    target=`osascript -e 'tell application "Finder" to get POSIX path of (target of front Finder window as text)'`
    if [[ "$target" != "" ]]; then
        cd "$target"; echo "Going to $target"
    else
        echo -e 'There are no Finder windows!' >$2
    fi
}

# Case sensitive grep
function search {
    egrep --color --mmap --exclude=tags --exclude=Session.vim --exclude=*.{png,jpg,gif} \
        --exclude-dir=backup --exclude-dir=.{git,svn,hg} --exclude-dir=*.xcodeproj -HIrn $1 .
}

# Case insensitive grep
function isearch {
    egrep --color --mmap --exclude=tags --exclude=Session.vim --exclude=*.{png,jpg,gif} \
        --exclude-dir=backup --exclude-dir=.{git,svn,hg} --exclude-dir=*.xcodeproj -HIrin $1 .
}

# Full screen Vim help page.
function :h () {
    vim +"h $1" +only;
}

# Copy current git commit sha1 to the clipboard.
function gcopy() {
    git rev-parse --short @ | tr -d '\n' | pbcopy && echo "Copied `pbpaste`"
}

log() {
  git log --graph --color=always \
      --format="%C(auto)%h%d %s %C(black)%C(bold)%cr" "$@" |
  fzf --ansi --no-sort --reverse --tiebreak=index --toggle-sort=\` \
      --bind "ctrl-m:execute:
                echo '{}' | grep -o '[a-f0-9]\{7\}' | head -1 |
                xargs -I % sh -c 'git show --color=always % | less -R'"
}
