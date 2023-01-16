output "website_bucket_arn" {
    description = "ARN of the S3 Bucket"
    value = module.website_s3_bucket123.arn
  }
  
  
output "website_bucket_name" {
    description = "Name of the bucket"
    value = module.website_s3_bucket123.name
}

output "website_bucket_domain" {
    description = "Domain name of the bucket"
    value = module.website_s3_bucket123.domain
}

output "website_bucket_endpoint" {
    description = "Endpoint Information of the bucket"
    value = module.website_s3_bucket123.endpoint
}