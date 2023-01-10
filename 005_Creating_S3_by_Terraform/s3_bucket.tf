/*
resource "random_uuid" "uuid" {
 
}

resource "aws_s3_bucket_acl" "my-s3-bucket" {
  bucket = "my-s3-bucket-${random_uuid.uuid.id}"
  acl    = "private"
}
*/

resource "random_uuid" "uuid" {
 
}


resource "aws_s3_bucket" "this" {
  bucket = "my-bucket-${random_uuid.uuid.id}"
}

resource "aws_s3_bucket_acl" "this" {
  bucket = aws_s3_bucket.this.id
  acl    = "private"
}