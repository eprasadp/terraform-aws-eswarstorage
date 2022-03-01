############### aws s3 resource ##############
resource "aws_s3_bucket" "mybucket" {
  bucket = var.s3_bucket_name
  tags = {
    env = lookup(var.s3_tags, "environment")
  }
}
