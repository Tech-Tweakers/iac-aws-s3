resource "aws_s3_bucket_public_access_block" "bucket_public_access_block" {
  bucket = aws_s3_bucket.bucket_main.id

  block_public_acls       = var.aws_s3_bucket_block_public_acls
  block_public_policy     = var.aws_s3_bucket_block_public_policy
  restrict_public_buckets = var.aws_s3_bucket_restrict_public_buckets
  ignore_public_acls      = var.aws_s3_bucket_ignore_public_acls
}

resource "aws_s3_bucket_acl" "bucket_acl_main" {
  bucket = aws_s3_bucket.bucket_main.id
  acl    = var.aws_s3_bucket_acl
}