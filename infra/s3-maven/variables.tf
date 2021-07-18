variable "aws_region" {
  description = "Enter the AWS Region"
  default     = "us-east-1"
}

variable "bucket_name" {
  type = string
  description = "Enter the bucket name"
  default     = "maven-repo-petclinic"
}

variable "s3_folders" {
  type        = list(string)
  description = "The list of S3 folders to create"
  default     = ["release", "snapshot"]
}