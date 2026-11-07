variable "name" {
  description = "Bucket name (must be globally unique, lowercase, hyphens). 3-63 chars."
  type        = string
  validation {
    condition     = can(regex("^[a-z0-9][a-z0-9.-]{1,61}[a-z0-9]$", var.name))
    error_message = "name must be 3-63 chars, lowercase alphanumeric, hyphens, dots."
  }
}

variable "environment" {
  description = "Deployment environment. One of: dev, staging, prod."
  type        = string
  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "environment must be dev, staging, or prod."
  }
}

variable "force_destroy" {
  description = "Allow Terraform to destroy non-empty buckets (dev/test only)."
  type        = bool
  default     = false
}

variable "versioning_enabled" {
  description = "Enable object versioning."
  type        = bool
  default     = true
}

variable "tags" {
  description = "Additional tags."
  type        = map(string)
  default     = {}
}
