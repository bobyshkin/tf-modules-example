output "s3_bucket_id" {
  description = "Name of tfstate S3 bucket backend"
  value       = module.s3_bucket.s3_bucket_id
}

output "s3_bucket_arn" {
  description = "ARN of tfstate S3 bucket backend"
  value       = module.s3_bucket.s3_bucket_arn
}

output "dynamodb_table_id" {
  description = "Name of tfstate lock DynamoDB table"
  value       = module.dynamodb_table.dynamodb_table_id
}

output "dynamodb_table_arn" {
  description = "ARN of tfstate lock DynamoDB table"
  value       = module.dynamodb_table.dynamodb_table_arn
}
