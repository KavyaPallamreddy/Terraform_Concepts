variable "bucket_name" {
    description = "Name of the S3 bucket and Must be unique acroos AWS"
    type = string
    }
  
variable "tags" {
    description = "Name of the S3 bucket and Must be unique acroos AWS"
    type = map(string)
    default = {}
    }