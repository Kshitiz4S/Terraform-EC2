terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.70.0"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "mywebserver" {
    ami = "ami-08eb150f611ca277f"
    instance_type = "t3.micro"

    tags = {
      Name = "SampleServer"
    }
}