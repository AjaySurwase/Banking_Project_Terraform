resource "aws_s3_bucket" "website" {
  bucket = var.bucket_name

  tags = {
    Name = "HCB-bank-website"
  }
}

resource "aws_s3_bucket_website_configuration" "website" {
  bucket = aws_s3_bucket.website.bucket

  index_document {
    suffix = "index.html"
  }
}
