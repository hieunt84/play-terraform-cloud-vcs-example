terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  profile = "default"
  region = "us-west-2"
}

/*data "aws_ami" "ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  owners = ["099720109477"]
}
*/

//resource "aws_instance" "ansible_server" {
//  ami           = "ami-08d70e59c07c61a3a"
//  instance_type = "t2.micro"

//  lifecycle {
//    create_before_destroy = true
//  }