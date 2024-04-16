provider "aws" {
  region = "global"
  access_key = AKIA6GBMBSCUBBS77RNC
  secret_key = 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
}

resource "aws_s3_bucket" "aws_s3_env0_bucket_test" {
  bucket = "aws_s3_env0_bucket_test_4398438"
}

variable "aws_access_key" {
  type = string
  default = ""
}

variable "aws_secret_key" {
  type = string
  default = ""
}
