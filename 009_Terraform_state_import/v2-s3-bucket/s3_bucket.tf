# Create S3 Bucket
resource "aws_s3_bucket" "mybucket" {
  
  bucket = "sumanth-kavya-1992-1997-2022"
  acl = "private"
  force_destroy = false
  
}

# terraform import aws_s3_bucket.mybucket sumanth-kavya-1992-1997-2022