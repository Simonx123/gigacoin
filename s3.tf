resource "aws_s3_bucket" "simonhyclouds4" {
  bucket = "simonhyloud097"
  acl =   "private"
  tags = {
        Department = "HR"
  }

}


resource "aws_s3_bucket" "simonhyclouds5" {
  bucket = "simonhyloud098"
  acl =   "private"
  tags = {
        Department = "HR"
  }

}



output "st" {
    value = aws_s3_bucket.simonhyclouds4.arn
}
