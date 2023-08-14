variable "region" {
  description = "AWS region"
  default     = "us-west-2"
}

variable "AWS_SECRET_ACCESS_KEY" {
  description = "AWS secret access key for authentication."
  default     = null
}

variable "AWS_ACCESS_KEY_ID" {
  description = "AWS access key ID for authentication."
  default     = null
}