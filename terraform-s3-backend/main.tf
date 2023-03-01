# Terraform S3 Backend

module "s3_bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "3.6.1"

  bucket = module.this.id
  acl    = "private"

  force_destroy = true

  tags = module.this.tags
}

module "dynamodb_table" {
  source  = "terraform-aws-modules/dynamodb-table/aws"
  version = "3.1.2"

  name        = module.this.id
  hash_key    = "LockID"
  table_class = "STANDARD"

  attributes = [
    {
      name = "LockID"
      type = "S"
    }
  ]

  tags = module.this.tags
}
