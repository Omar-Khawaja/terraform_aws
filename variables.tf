
variable "access_key" {}
variable "secret_key" {}
variable "region" {}
variable "ami" {}
variable "instance_type" {
  default = "t2.micro"
}
variable "server_port" {
  default = 80
}
variable "volume_type" {
  default = "gp2"
}
variable "volume_size" {
  default = 8
}
variable "delete_on_termination" {
  default = "true"
}
