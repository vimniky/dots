function rancher-start() {
  sudo docker run -d --restart=unless-stopped -p 8080:8080 rancher/server
}
