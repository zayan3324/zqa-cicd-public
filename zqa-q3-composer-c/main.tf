variable "region" {
  description = "Cloud region for resources (provider-scoped)."
  type        = string
  default     = "us-east-1"
}

provider "aws" {
  region = var.region
}

module "s3_bucket_private_0" {
  source             = "./modules/aws/s3-bucket-private"
  environment        = "dev"
  name               = "application-logs"
  versioning_enabled = true
}
