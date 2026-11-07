# aws/s3-bucket-private

S3 bucket with public access blocked, AES256 SSE, optional versioning. Safe defaults for application storage.

## Inputs
- `name` (required, globally unique)
- `environment` (required)
- `force_destroy` (default `false`)
- `versioning_enabled` (default `true`)

## Outputs
- `bucket_name`, `bucket_domain_name`, `region`, `metadata`
