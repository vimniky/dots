function git-commit-dots() {
  cd ~/dots
  git add .
  if [ -z "$1" ]
  then
    git commit -m "$1"
  else
    git commit -m "$(date)"
  fi
}

function git-commit-emacsrc() {
  cd ~/.spacemacs.d
  git add .
  if [ -z "$1" ]
  then
    git commit -m "$1"
  else
    git commit -m "$(date)"
  fi
}

