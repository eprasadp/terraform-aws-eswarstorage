resource "aws_s3_bucket" "test_bucket" {
  bucket = var.bucket
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

output "bucketarn" {
  value = aws_s3_bucket.test_bucket.arn
}