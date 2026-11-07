output "id"  { value = aws_s3_bucket.this.id }
output "arn" { value = aws_s3_bucket.this.arn }
output "bucket_name"        { value = aws_s3_bucket.this.bucket }
output "bucket_domain_name" { value = aws_s3_bucket.this.bucket_domain_name }
output "region"             { value = aws_s3_bucket.this.region }
output "metadata" {
  description = "Module metadata object."
  value = {
    name        = var.name
    environment = var.environment
  }
}
