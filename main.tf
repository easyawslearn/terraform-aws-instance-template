provider "aws" {
  region = "${var.region}"
}

resource "aws_instance" "web" {
  ami           = "${var.ami_id}"
  instance_type = "t2.micro"

  tags = {
    Name = "Template-Example"
  }
}
