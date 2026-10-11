variable "provide_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-2"
}

variable "instancia_ami" {
  description = "The AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0d3d85815a9746bc5"
}

variable "instancia_type" {
  description = "The instance type for the EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "tags" {
  description = "Tags for the EC2 instance"
  type        = map(string)
  default     = {
    Name = "my_test_instance"
  }
}