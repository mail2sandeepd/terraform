resource "aws_s3_bucket" "sandeep-test-bkt" {
  bucket = var.bucket_name
  tags = {
    Name = var.bucket_name
  }
}

