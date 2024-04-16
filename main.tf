provider "aws" {
  region = "global"
  access_key = ""
  secret_key = ""
}

resource "aws_s3_bucket" "aws_s3_env0_bucket_test" {
  bucket = "aws_s3_env0_bucket_test_4398438"
}


