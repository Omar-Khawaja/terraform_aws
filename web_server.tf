
provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

resource "aws_instance" "web_server" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  vpc_security_group_ids = ["${aws_security_group.web_server_sg.id}"]
  root_block_device {
    volume_type = "${var.volume_type}"
    volume_size = "${var.volume_size}"
    delete_on_termination = "${var.delete_on_termination}"
  }
}

resource "aws_security_group" "web_server_sg" {
  name = "allow_http"

  ingress {
    from_port = "${var.server_port}"
    to_port = "${var.server_port}" 
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
