#---------VPC variables--------------
variable "vpc_cidr_block" {
  type        = string
  description = "CIDR block for the VPC"
}
variable "instance_tenancy" {
  type        = string
  description = "Set instance-tenancy"
}
variable "enable_dns_support" {
  type        = bool
  description = "whether to enable DNS support or not"
}
variable "enable_dns_hostnames" {
  type        = bool
  description = "whether to enable DNS hostnames or not"
}



#---------Tags variables--------------
variable "tags" {
  default     = {}
  type        = map(string)
  description = "Extra tags to attach to the VPC resources"
}
variable "owner" {
  type        = string
  description = "Name of owner"
}
variable "environment" {
  type        = string
  description = "The environment name for the resources."
}
variable "application" {
  type        = string
  description = "Name of the application"
}

#---------Subnets variables--------------
variable "public_subnet_cidr_blocks" {
  type        = list(any)
  description = "List of public subnet CIDR blocks"
}
variable "app_subnet_cidr_blocks" {
  type        = list(any)
  description = "List of application subnet CIDR blocks"
}
variable "availability_zones" {
  type        = list(any)
  description = "List of availability zones"
}
variable "map_public_ip_on_launch" {
  type        = bool
  description = "whether to map public ip on launch or not"
}

#---------Route-tables variables--------------
variable "destination_cidr_block" {
  type        = string
  description = "Set the destination cidr block"
}


#---------Nat-gateway variables--------------
variable "domain" {
  type        = string
  description = "Set the domain of eip"
}
variable "create_nat_gateway" {
  type        = bool
  description = "whether to create a NAT gateway or not"
}
