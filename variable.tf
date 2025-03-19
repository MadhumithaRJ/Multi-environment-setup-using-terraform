variable "env" {
  description = "Deployment Environment (dev, staging, production)"
  type        = string
}

variable "location" {
  description = "Azure region"
  default     = "canadacentral"
}

variable "node_count" {
  description = "Number of AKS worker nodes"
  type        = map(number)
  default = {
    dev        = 2
    staging    = 3
    production = 5
  }
}

variable "vnet_cidr" {
  description = "VNet CIDR per environment"
  type        = map(string)
  default = {
    dev        = "10.10.0.0/16"
    staging    = "10.20.0.0/16"
    production = "10.30.0.0/16"
  }
}

variable "subnet_cidr" {
  description = "Subnet CIDR per environment"
  type        = map(string)
  default = {
    dev        = "10.10.1.0/24"
    staging    = "10.20.1.0/24"
    production = "10.30.1.0/24"
  }
}
