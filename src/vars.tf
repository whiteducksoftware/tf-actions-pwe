# environment stage
variable "stage" {
  description = "Name of the environment. Supported are dev & prd"
  type        = string
  default     = "dev"

  validation {
    condition     = var.stage == "dev" || var.stage == "tst" || var.stage == "prod"
    error_message = "The name of the environment can only be \"dev\", \"tst\" and \"prod\"."
  }
}

# resource location
variable "location" {
  description = "The location used for all resources"
  type        = string
  default     = "germanywestcentral"

  validation {
    condition     = var.location == "germanywestcentral" || var.location == "westeurope"
    error_message = "The location can only be \"germanywestcentral\" or \"westeurope\"."
  }
}
