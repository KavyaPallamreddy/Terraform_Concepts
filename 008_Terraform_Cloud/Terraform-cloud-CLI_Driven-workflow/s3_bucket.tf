module "website_s3_bucket123" {
  source  = "app.terraform.io/kavyareddy/website/s3"
  version = "1.0.2"
  # insert required variables here
  bucket_name = var.my_s3_bucket
  tags = var.my_s3_tags
}