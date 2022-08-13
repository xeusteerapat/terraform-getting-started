variable "aws_region" {
  type        = string
  description = "AWS Region for all resources"
  default     = "ap-southeast-1"
}

variable "enable_dns_hostnames" {
  type        = bool
  description = "Enable DNS hostnames in VPC"
  default     = true
}

variable "vpc_cidr_block" {
  type        = string
  description = "Base CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "vpc_subnets_cidr_block" {
  type        = list(string)
  description = "CIDR block for Subnet 1 in VPC"
  default     = ["10.0.0.0/24", "10.0.1.0/24"]
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

# use for local
variable "company" {
  type    = string
  default = "Xeus Company"
}

variable "project" {
  type    = string
  default = "Project name Xeus"
}

variable "billing_code" {
  type        = string
  description = "Billing code for resource tagging"
}
