provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0323c3dd2da7fb37d"

  tags = {
    Name = "Test Instance"
    Creator = "ckilpatrick"
    Terraform = true
  }
}