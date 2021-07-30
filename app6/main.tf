provider "aws" {
region = "us-east-2"
}

resource "aws_instance" "web" {
  ami           = "ami-0443305dabd4be2bc"
  instance_type = "t3.micro"

  tags = {
    Name = "Gagandeep"
  }
}