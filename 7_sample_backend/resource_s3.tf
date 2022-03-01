resource "aws_s3_bucket" "mybucket2" {
  bucket = var.s3_bucket_name
  acl    = "private"
  
  versioning {
    enabled = true
  }
  
  # Enable server-side encryption by default
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
  tags = {
    env = lookup(var.s3_tags, "environment")
  }
}

resource "aws_dynamodb_table" "locks" {
  name         = "vishnu-first-db-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}



