terraform {
      required_version = ">= 1.0.0"

      required_providers {
            aws = {
                  source  = "hashicorp/aws"
                  version = "~> 6.68.0"
            }
      }
}

provider "aws" {
      region = "us-east-2"

}

resource "aws_s3_bucket" "my_test_bucket" {
      bucket = "my-test-bucket-12345643e45rgre"


      tags = {
            Name        = "My Test Bucket"
            Environment = "Dev"
            managed_by  = "Terraform"


      }
}