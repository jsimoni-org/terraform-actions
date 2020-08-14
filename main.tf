provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t3.micro"

  root_block_device {
    encrypted = true
  }

  tags = {
    Name        = "Test Instance"
    Creator     = "ckilpatrick@ipipeline.com"
    Customer    = "Null"
    Environment = "QA"
    Product     = "CCOE"
    Terraform   = true
  }
}

resource "aws_instance" "example_2" {
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t3.micro"

  root_block_device {
    encrypted = true
  }

  tags = {
    Name        = "Test Instance 2"
    Creator     = "ckilpatrick@ipipeline.com"
    Customer    = "Null"
    Environment = "QA"
    Product     = "CCOE"
    Terraform   = true
  }
}
