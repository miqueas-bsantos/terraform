resource "aws_s3_bucket" "terraform_first_bucket" {
  bucket = "my-first-tf-bucket-969"
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.terraform_first_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}