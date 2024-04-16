provider "aws" {
  region = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_s3_bucket" "aws-s3-env0-bucket-test-1" {
  bucket = "aws-env0-bucket-test-4398438-1"
tags = {
    Name        = "Nameofthebucket"
    Environment = "Production"
  }
}

variable "aws_access_key" {
  type = string
  default = ""
}

variable "aws_region" {
  type = string
  default = ""
}

module "module" {
  source = "api.env0.com/81b8f9f3-6542-417b-a2b8-e8120df3a2a2/module/org"
  version = "1.1.6"
}

variable "aws_secret_key" {
  type = string
  default = ""
}

