terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.68.0"
    }
  }
}

provider "aws" {
  region = "${var.provide_region}"
  
}

resource "aws_instance" "Devopstulpd" {
  ami           = "${var.instancia_ami}"
  instance_type = "${var.instancia_type}"
  tags = var.tags
}