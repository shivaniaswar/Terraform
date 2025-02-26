variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}


variable "enable_versioning" {
  description = "Enable versioning for the S3 bucket"
  type        = bool
  default     = false
}

variable "enable_encryption" {
  description = "Enable server-side encryption for the S3 bucket"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags to assign to the S3 bucket"
  type        = map(string)
  default     = {}
}
