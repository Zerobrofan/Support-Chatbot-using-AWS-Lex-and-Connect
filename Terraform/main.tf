# S3 Bucket for Hosting the Website
resource "aws_s3_bucket" "journeygrove" {
  bucket = var.s3_bucket_name
  acl    = "public-read"

  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}

# ACM Certificate
resource "aws_acm_certificate" "certificate" {
  domain_name       = var.domain_name
  validation_method = "DNS"
}

# Route 53 Record
resource "aws_route53_zone" "main" {
  name = var.domain_name
}

resource "aws_route53_record" "alias" {
  zone_id = aws_route53_zone.main.zone_id
  name    = var.domain_name
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.journeygrove.domain_name
    zone_id                = aws_cloudfront_distribution.journeygrove.hosted_zone_id
    evaluate_target_health = false
  }
}

# Modules
module "lambda" {
  source = "./lambda"
}

module "api_gateway" {
  source = "./api_gateway"
}

module "lex" {
  source = "./lex"
}

module "connect" {
  source = "./connect"
}
