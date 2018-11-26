variable "consul_server_ips" {
  type = "list"
}

# resource "docker_image" "jenkins" {
#   name         = "jenkins:vault"
#   keep_locally = true
# }

resource "docker_container" "jenkins" {
  name     = "jenkins"
  image    = "jenkins:vault"
  hostname = "jenkins"

  domainname = "consul"
  dns        = ["${var.consul_server_ips}"]
  dns_search = ["consul"]

  labels = {
    robot = "vaultron"
  }

  must_run = true

  volumes {
    host_path      = "${path.module}/../../../jenkins/"
    container_path = "/var/jenkins_home"
  }

  ports {
    internal = "8080"
    external = "8080"
    protocol = "tcp"
  }

  ports {
    internal = "50000"
    external = "50000"
    protocol = "tcp"
  }
}
