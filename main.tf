provider "aws" {
  region     = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

variable "aws_access_key" {
  type    = string
  default = ""
}

variable "aws_secret_key" {
  type    = string
  default = ""
}

module "module" {
  source  = "api.env0.com/81b8f9f3-6542-417b-a2b8-e8120df3a2a2/module/org"
  version = "1.1.6"
}

variable "bucket_name" {
  type    = string
  default = ""
}

resource "aws_s3_bucket" "modular-reg-aws-env0-bucket095" {
  bucket = var.bucket_name
}


