module "s3bucket" {
  source = "./modules/s3bucket"
  bucket = "terraform-learning-2022-feb-28"
}

output "bucketarn" {
  value = module.s3bucket.bucketarn
  description = "arn number of the bucket"
}