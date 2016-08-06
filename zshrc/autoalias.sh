
# override default
alias cp="cp -vi"
alias ls="ls -GAp"
alias mv="mv -vi"
alias rm="rm -v"

alias pserver='python -m SimpleHTTPServer'
alias gmm='git commit -m'
alias py='python'
alias py3='python3.4'

#alias for 'brew services'
alias bs="brew services"
alias gitc="git clone"
alias o="open"
alias g="git"
alias oa="open -a"
alias sb="/Applications/lambda.app/Contents/SharedSupport/bin/subl"
alias oaf="open -a Finder"
alias gg="open -a Google\ Chrome"
alias gs="git status -sb"
alias if0="ifconfig en0"
alias rn="react-native"
alias npmlink="npm-link-shared ~/nodejs/node_modules/ ./"

# docker alias
alias dm="docker-machine"
alias d="docker"

function drmall() {
  docker rm -v $(docker ps -aq -f status=exited)
}
alias sshzyd="ssh -t -p 59110 root@112.74.126.227"
alias subdir="~/Library/Application\ Support/Sublime\ Text\ 3"
alias find-files="mdfind -onlyin"
#log

alias openssl-gen="openssl req -x509 -days 365 -newkey rsa:1024 -out my.cert -keyout my.key"
alias gcl="git clone"
alias ot="open -a iTerm"
alias untar="tar xzf"
