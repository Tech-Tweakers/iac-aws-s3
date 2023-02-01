resource "aws_s3_bucket" "bucket_main" {
  bucket = local.prefix
  tags   = var.tags
}

resource "aws_s3_object" "bucket_object_main" {
  count  = length(var.keys)
  key    = "${local.team}-${local.product}-${var.keys[count.index].key_name}"
  bucket = aws_s3_bucket.bucket_main.id
  tags   = var.tags
}