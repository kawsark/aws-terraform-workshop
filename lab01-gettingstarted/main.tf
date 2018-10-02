provider "aws" {
  region = "${var.region}"
}

module "server" {
  source = "./server"

  num_webs     = "${var.num_webs}"
  identity     = "${var.identity}"
  ami          = "${var.ami}"
  ingress_cidr = "${var.ingress_cidr}"
}

