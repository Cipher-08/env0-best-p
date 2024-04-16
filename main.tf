provider "aws" {
  region = "us-east-1"
  access_key = var.access
  secret_access_key = var.secret
}

resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = "my-s3-bucket-${timestamp()}"
  acl    = "private"
}

variable "access" {
  type = string
  default = ""
}

variable "secret" {
  type = string
  default = ""
}
