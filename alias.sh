alias sudo='sudo ' # Enable aliases to be sudo’ed
alias ls="ls -GAp"
alias dirs='dirs -v'
alias tx="tmuxinator"
alias sozsh="source ~/.zshrc"
alias vim-install-boundle="vim +BundleInstall! +BundleClean +q"
alias vbundles="vim ~/.vimrc.bundles.local"
alias vim="nvim"
alias desk="cd ~/Desktop"
alias valias="vim ~/dots/alias.sh"
alias untar="tar xzf"
alias rrm="rm -rf"
alias cpp="cp -Rp"
alias treep="tree --noreport -fp"
alias treepa="tree --noreport -fpa"
alias ghc-sandbox="ghc -no-user-package-db -package-db .cabal-sandbox/*-packages.conf.d"
alias ghci-sandbox="ghci -no-user-package-db -package-db .cabal-sandbox/*-packages.conf.d"
alias runhaskell-sandbox="runhaskell -no-user-package-db -package-db .cabal-sandbox/*-packages.conf.d"
alias yd="youtube-dl"
alias code-settings="code $HOME/Library/Application\ Support/Code/User"
#alias for 'brew services'
alias finder="open -a Finder"
alias if0="ifconfig en0"
alias find-files="mdfind -onlyin"
#log
alias openssl-gen="openssl req -x509 -days 365 -newkey rsa:1024 -out my.cert -keyout my.key"
alias lsof-ports="lsof -iTCP -sTCP:LISTEN -n -P"

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Empty the Trash on all mounted volumes and the main HDD.
# Also, clear Apple’s System Logs to improve shell startup speed.
# Finally, clear download history from quarantine. https://mths.be/bum
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"

# Show/hide hidden files in Finder
# alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
# alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
# alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
# alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Merge PDF files
# Usage: `mergepdf -o output.pdf input{1,2,3}.pdf`
alias mergepdf='/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py'

# Disable Spotlight
alias spotoff="sudo mdutil -a -i off"
# Enable Spotlight
alias spoton="sudo mdutil -a -i on"

# Intuitive map function
# For example, to list all directories that contain a certain file:
# find . -name .gitattributes | map dirname
alias map="xargs -n1"

# Always enable colored `grep` output
# Note: `GREP_OPTIONS="--color=auto"` is deprecated, hence the alias usage.
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=aut'

# List only directories
alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"

# git
alias gmm='git commit -m'
alias gma='git commit --amend'
alias git-confict-files="git diff --diff-filter=U"
alias git-conflict='git diff --name-only --diff-filter=U'
alias git-diff-file-history="git log --follow -p"

# fzf
alias fopen='open $(fzf)'
alias fvim='vim $(fzf)'
alias fcode='code $(fzf)'
function fz-gss() {
 git status -s \
 | fzf --no-sort --reverse \
 --preview 'git diff --color=always {+2}'
}
fgitd() {
  preview="git diff $@ --color=always -- {-1} | diff-so-fancy"
  git diff $@ --name-only | fzf -m --ansi --preview $preview
}
alias fgd=fgitd
