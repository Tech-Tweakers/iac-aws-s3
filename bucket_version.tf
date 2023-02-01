resource "aws_s3_bucket_versioning" "bucket_versioning" {
  bucket = aws_s3_bucket.bucket_main.id
  
  versioning_configuration {
    status = var.aws_s3_bucket_versioning
  }
}