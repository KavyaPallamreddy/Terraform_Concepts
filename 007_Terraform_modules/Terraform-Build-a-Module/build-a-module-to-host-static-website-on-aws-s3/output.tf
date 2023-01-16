output "arn" {
    description = "ARN of the S3 Bucket"
    value = module.website_s3_bucket.arn
  }
  
  
output "name" {
    description = "Name of the bucket"
    value = module.website_s3_bucket.id
}

output "domain" {
    description = "Domain name of the bucket"
    value = module.website_s3_bucket.website_domain
}

output "endpoint" {
    description = "Endpoint Information of the bucket"
    value = module.website_s3_bucket.website_endpoint
}