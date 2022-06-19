terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "app_server1" {
  ami           = "ami-06640050dc3f556bb"
  instance_type = "t2.micro"
  key_name = "TestRhelKeyPair"

  tags = {
    Name = "Red Hat App Server 1"
  }
}

resource "aws_instance" "app_server2" {
  ami           = "ami-06640050dc3f556bb"
  instance_type = "t2.micro"
  key_name = "TestRhelKeyPair"

  tags = {
    Name = "Red Hat App Server 2"
  }
}

