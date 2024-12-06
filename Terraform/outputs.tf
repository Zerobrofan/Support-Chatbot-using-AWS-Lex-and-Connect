# CloudFront Distribution URL
output "cloudfront_url" {
  description = "CloudFront distribution for static S3 website"
  value       = aws_cloudfront_distribution.journeygrove.domain_name
}

# S3 Website Endpoint
output "s3_website_endpoint" {
  description = "Static S3 website endpoint"
  value       = aws_s3_bucket.journeygrove.website_endpoint
}

# API Gateway Endpoint
output "api_gateway_endpoint" {
  description = "API Gateway endpoint ti invoke Lambda counter"
  value       = aws_api_gateway_deployment.visitor_counter.invoke_url
}

# DynamoDB Table Name
output "dynamodb_table_name" {
  description = "VisitorCounter table to store/fetch visits"
  value       = aws_dynamodb_table.visitor_counter.name
}

output "lex_bot_name" {
  description = "Name of the Journey Grove Lex bot"
  value       = aws_lex_bot.journeygrove_support_bot.name
}

output "connect_instance_id" {
  description = "Amazon Connect instance ID"
  value       = aws_connect_instance.journeygrove_connect.id
}