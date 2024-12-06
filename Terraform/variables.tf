# AWS Region
variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

# S3 Bucket Name
variable "s3_bucket_name" {
  description = "The name of the S3 bucket for static website hosting"
  type        = string
}

# Domain Name
variable "domain_name" {
  description = "The domain name for the website"
  type        = string
}

# Visitor Counter Table Name
variable "dynamodb_table_name" {
  description = "DynamoDB table name for the visitor counter"
  type        = string
  default     = "VisitorCounter"
}
