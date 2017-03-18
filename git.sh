function git-commit-dots() {
  cd ~/dots
  git add .
  if [ -z "$1" ]
  then
    git commit -m "$(date)"
  else
    git commit -m "$1"
  fi
  git push
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
  git push
}

