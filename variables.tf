variable "tags" {
  description = ""
  default = {
    team    = "dev"
    owner   = "atorres"
    product = "terraform-states"
    env     = "development"
  }
  type = map(string)
}

variable "aws_s3_bucket_block_public_acls" {
  description = "bucket_block_public_acls"
  type        = bool
  default     = true
}

variable "aws_s3_bucket_block_public_policy" {
  description = "bucket_block_public_policy"
  type        = bool
  default     = true
}

variable "aws_s3_bucket_restrict_public_buckets" {
  description = "bucket_restrict_public_buckets"
  type        = bool
  default     = true
}

variable "aws_s3_bucket_ignore_public_acls" {
  description = "bucket_ignore_public_acls"
  type        = bool
  default     = true
}

variable "aws_s3_bucket_versioning" {
  description = "bucket_versioning"
  type        = string
  default     = "Enabled"
}

variable "aws_s3_bucket_acl" {
  description = "aws_s3_bucket_acl"
  type        = string
  default     = "private"
}

variable "keys" {
  type = list(object({
    key_name    = string
    description = string
  }))
  default = []
}
