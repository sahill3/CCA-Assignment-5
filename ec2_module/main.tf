terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "instance-5" {
    ami = "ami-0287a05f0ef0e9d9a"
    instance_type = "t2.micro"
    key_name = "ssh-key-5"

    tags = {
        Name = "Assignment_5_Instance"
    }
}

