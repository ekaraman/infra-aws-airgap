variable "region" {
  description = "AWS region"
  type        = string
  default     = "eu-central-1"
}

variable "project" {
  description = "Project name used in resource naming"
  type        = string
  default     = "airgap"
}

variable "env" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

