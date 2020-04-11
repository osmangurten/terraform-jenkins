variable "region" {
  description = "choose region for your stack"
  default     = "us-east-1"
  type        = "string"
}

variable "vpc_cidr" {
  description = "choose cidr for vpc"
  default     = "10.200.0.0/16"
  type        = "string"
}
#
# variable "subnet_cidr" {
#   description = "choose vpc cidr for your stack"
#   default     = "10.100.0.0/16"
# }

variable "tenancy" {
  default = "default"
}
#
# variable "vpc_id" {}
#
# variable "ec2_count" {
#   default = "1"
# }
