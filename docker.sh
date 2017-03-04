# alias
alias vdocker="vim $HOME/dots/docker.sh"
alias d=docker
alias dm="docker-machine"
alias dcom="docker-compose"

# functions
function docker-use-vmachine() {
  eval $(docker-machine env default)
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

