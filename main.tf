provider "aws" {
  region = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_s3_bucket" "aws-s3-env0-bucket-test" {
  bucket = "aws-env0-bucket-test-4398438"
}

variable "aws_access_key" {
  type = string
  default = ""
}

variable "aws_secret_key" {
  type = string
  default = ""
}

module "modules" {
  source = "/modules"
  version = "1.0.0"
}

module "modules_reg" {
  source = "api.env0.com/81b8f9f3-6542-417b-a2b8-e8120df3a2a2/module_reg/org"
  version = "1.0.0"
}
