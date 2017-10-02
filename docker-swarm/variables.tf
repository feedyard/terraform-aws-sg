variable "security_group_name" {
  description = "The name for the security group"
}

variable "vpc_id" {
  description = "The VPC in which this security group will go"
}

variable "source_cidr_block" {
  description = "The source CIDR block to allow traffic from"
  default = "0.0.0.0/0"
}

variable "tags" {
  description = "A map of tags to add to all resources"
  default     = {}
}