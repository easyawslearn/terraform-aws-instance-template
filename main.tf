provider "aws" {
  region = "${var.region}"
}

resource "aws_instance" "web" {
  ami           = "${var.ami_id}"
  instance_type = "${var.instancetype}"

  tags = {
    Name = "${var.tag}"
  }
}
