# Connection to the metal server
variable "metal_connection" {
  type = object({
    host = string
    user = string
    password = string
    sshKeyPath = string
  })

  default = {
      host = "192.168.0.119"
      user = "slimbook"
      password = "slimbook"
      sshKeyPath = "~/.ssh/id_ed25519"
  }
}



module "bootstrap" {
  source = "./modules/bootstrap"

  ssh_connection = {
    host = "192.168.0.119"
    user = "slimbook"
    password = "slimbook"
    sshKeyPath = "~/.ssh/id_ed25519"
  }
}