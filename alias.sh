alias ls="ls -GAp"
alias o="open"
alias sozsh="source ~/.zshrc"
alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw &>/dev/null"
alias vimrc="vim ~/.vimrc.local"
alias desk="cd ~/Desktop"
alias valias="vim ~/dots/alias.sh"
alias untar="tar xzf"
alias rrm="rm -rf"
alias cpp="cp -Rp"
alias treep="tree --noreport -fp"
alias treepa="tree --noreport -fpa"
alias dm="docker-machine"
alias ghc-sandbox="ghc -no-user-package-db -package-db .cabal-sandbox/*-packages.conf.d"
alias ghci-sandbox="ghci -no-user-package-db -package-db .cabal-sandbox/*-packages.conf.d"
alias runhaskell-sandbox="runhaskell -no-user-package-db -package-db .cabal-sandbox/*-packages.conf.d"
alias gmm='git commit -m'
alias pserver='python -m SimpleHTTPServer'
#alias for 'brew services'
alias bs="brew services"
alias g="git"
alias sb="/Applications/lambda.app/Contents/SharedSupport/bin/subl"
alias oaf="open -a Finder"
alias gg="open -a Google\ Chrome"
alias if0="ifconfig en0"
function drmall() {
  docker rm -v $(docker ps -aq -f status=exited)
}
alias subdir="~/Library/Application\ Support/Sublime\ Text\ 3"
alias find-files="mdfind -onlyin"
#log
alias openssl-gen="openssl req -x509 -days 365 -newkey rsa:1024 -out my.cert -keyout my.key"
