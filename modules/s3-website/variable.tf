# Input variable definitions

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "tags" {
  description = "Tages to set on the bucket"
  type        = map(string)
  default     = {}
}

variable "aws_region" {
  type        = string
  default     = "us-east-1"
}