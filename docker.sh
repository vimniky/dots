# alias
alias vdocker="vim $HOME/dots/docker.sh"
alias d=docker
alias dm="docker-machine"
alias dcom="docker-compose"
alias docker-volume-find-all-dangling="docker volume ls -f dangling=true"
alias docker-volume-rm-all-dangling="docker volume rm `docker volume ls -q -f dangling=true`"
autoload -U compinit && compinit
# functions
function dm-use() {
  if [ -z "$1" ]
  then 
    eval $(docker-machine env default)
  else
    eval $(docker-machine env "$1")
  fi
  env | grep DOCKER
}

function docker-stop-all-containers() {
  docker stop $(docker ps -q)
}

function docker-use-for-mac() {
  unset DOCKER_TLS_VERIFY
  unset DOCKER_CERT_PATH
  unset DOCKER_MACHINE_NAME
  unset DOCKER_HOST
}
# remove all exited docker containers
function docker-rm-all-exited-containers() {
  docker rm -v $(docker ps -aq -f status=exited)
}

function docker-rm-all-created-containers() {
  docker rm -v $(docker ps -aq -f status=created)
}
