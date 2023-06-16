terraform.tf

terraform {
  required_version = "1.4.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.67.0"
    }
  }
}
provider.tf
provider "aws" {
  # Configuration options
  region     = "us-west-1"
  access_key = var.access_key
  secret_key = var.secret_key
}
instance.tf
 module "mywebserver" {
  source = "./modules/webserver"
  image_id = "dhbcihrw"
  instance_type = "t2.micro"
 }
variable.tf
variable "access_key" {
  type = string
}

variable "secret_key" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "image_id" {
    type = string
}
