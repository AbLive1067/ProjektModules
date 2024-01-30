

variable "acl" {
  type = string
  description = "type of access control for the bucket"
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

variable "tags" {
  default     = {}
  type        = map(string)
  description = "Extra tags to attach to the alb-asg resources"
}

