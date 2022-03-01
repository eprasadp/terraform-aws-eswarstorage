################# variables ################
variable "s3_bucket_name" {
  default     = "eswar-st2-bucket"
  description = "Name of the s3 bucket"
  type        = string
}
variable "s3_tags" {
  type = map

  default = {
    createdby   = "Eswar"
    environment = "dev"
  }
}

variable "s3_regions" {
  type    = string
  default = "eu-west-1"
}
